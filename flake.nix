{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    devshell = {
      url = "github:numtide/devshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { devshell, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; }
    {
      imports = [
        inputs.devshell.flakeModule
      ];
      systems = [ "x86_64-linux" ];
      perSystem = { pkgs, ... }: {
        devshells.default = {
          commands = [
            {
              name  = "compile";
              command = "typst compile main.typ";
              help = "compiles resume to pdf";
            }
          ];
          packages = with pkgs; [
            atkinson-hyperlegible-next
            atkinson-hyperlegible-mono

            font-awesome
            font-awesome_6

            inter

            typst
            typstyle
            typstPackages.fontawesome
          ];

          env = [
            {
              name = "TYPST_FONT_PATHS";
              eval = "$DEVSHELL_DIR/share/fonts";
            }
          ];
        };

        formatter = pkgs.alejandra;
      };
    };
}
