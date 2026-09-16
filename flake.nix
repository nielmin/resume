{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;}
    {
      systems = ["x86_64-linux"];
      perSystem = {pkgs, ...}: let
        fonts = with pkgs; [
          atkinson-hyperlegible-next
          atkinson-hyperlegible-mono
          gelasio
          font-awesome
          font-awesome_6
          inter
          lato
        ];

        fontsConf = pkgs.makeFontsConf {
          fontDirectories = fonts;
        };
      in {
        devShells.default = pkgs.mkShellNoCC {
          packages = with pkgs;
            [
              harper
              typst
              typstyle
              typstPackages.fontawesome
            ]
            ++ fonts;

          shellHook = ''
            export FONTCONFIG_FILE="${fontsConf}"
          '';
        };

        formatter = pkgs.alejandra;
      };
    };
}
