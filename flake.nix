{
  description = "Bun2nix flake";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";

    bun2nix.url = "github:nix-community/bun2nix?ref=2.1.0";

    # Follow bun2nix's pinned nixpkgs (instead of our own nixos-unstable) so the
    # overlay's `pkgs.bun2nix` matches the binary prebuilt by nix-community and
    # is substituted from their cache rather than compiled from source (~5min).
    # Trade-off: our whole build now tracks bun2nix's nixpkgs; bump it by
    # updating the bun2nix input.
    nixpkgs.follows = "bun2nix/nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils, bun2nix }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            bun2nix.overlays.default
          ];
        };

        inherit (pkgs) lib;

        package = pkgs.callPackage ./default.nix { };
      in
      {
        devShells.default =
        pkgs.mkShell {
          buildInputs = with pkgs; [
            bun
            svelte-check
            typescript-language-server
            svelte-language-server
          ];

          # sharp (via @sveltejs/enhanced-img) loads a prebuilt native module
          # that needs libstdc++.so.6 on the library path; without this
          # `bun run dev/build/check` fails to load sharp on NixOS.
          LD_LIBRARY_PATH = lib.makeLibraryPath [ pkgs.stdenv.cc.cc.lib ];
        };

        packages.default = package;

        # Exposed so CI can `nix run .#skopeo` to push the image using the
        # flake's locked nixpkgs, avoiding the unauthenticated `nixpkgs#`
        # registry lookup (which hits the GitHub API rate limit on CI).
        packages.skopeo = pkgs.skopeo;

        # OCI image for the home server. Build with `nix build .#container`,
        # then `docker load < result` (or push to a registry). The bun server
        # listens on $PORT (default 3000); point Traefik at that port.
        packages.container = pkgs.dockerTools.buildLayeredImage {
          name = "south-website";
          tag = "latest";
          # `bun run start` spawns /bin/sh to run the package.json script.
          contents = [ pkgs.dockerTools.binSh ];
          config = {
            Cmd = [ (lib.getExe package) ];
            Env = [ "PORT=3000" ];
            ExposedPorts = { "3000/tcp" = { }; };
          };
        };
      }
    );
}
