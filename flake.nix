{
  description = "Bun2nix flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    bun2nix = {
      url = "github:nix-community/bun2nix?ref=2.1.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };
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
        };

        packages.default = package;

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
