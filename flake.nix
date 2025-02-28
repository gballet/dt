# This flake was initially generated by fh, the CLI for FlakeHub (version 0.1.5)
{
  description = "duct tape for your unix pipes";

  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1.*.tar.gz";
    flake-utils = {
      url = "github:numtide/flake-utils";
    };
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs { inherit system; };
      dt = pkgs.callPackage ./. { };
    in {
      packages.default = dt;
      devShells.default = pkgs.mkShell {
        packages = with pkgs; [ zig_0_12 ];
      };
    });
}
