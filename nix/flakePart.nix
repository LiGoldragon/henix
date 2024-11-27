{ inputs, lib, ... }:
{
  systems = lib.systems.flakeExposed;

  imports = [
    inputs.nixpkgs.flakeModules.default
  ];

  perSystem = ./perSystem.nix;
}
