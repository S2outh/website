{
  bun2nix,
  runCommand,
  stdenv,
  lib,
  ...
}:
let
  # Generated at build time from bun.lock so we don't keep a second file in
  # sync. bun2nix is a pure transformation here — bun.lock already contains
  # integrity hashes for every dependency, so no network access is needed.
  # This uses import-from-derivation: evaluation pauses until bun.nix is built.
  bunNix = runCommand "bun.nix" { nativeBuildInputs = [ bun2nix ]; } ''
    bun2nix -l ${./bun.lock} -o $out
  '';
in
bun2nix.writeBunApplication {
  packageJson = ./package.json;

  src = ./.;

  buildPhase = ''
    bun run build
  '';

  startScript = ''
    bun run start
  '';

  bunDeps = bun2nix.fetchBunDeps {
    inherit bunNix;
  };
}
