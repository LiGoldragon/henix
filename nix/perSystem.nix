{ lib, config, pkgs, tuner-src, ... }:
let
  inherit (pkgs) stdenv;

  tuner = stdenv.mkDerivation {
    name = "tuner";
    version = "unversionned";
    src = tuner-src;
  };

in
{
  options = { };

  config = {
    packages = {
      inherit tuner;
      default = tuner;
    };
  };
}
