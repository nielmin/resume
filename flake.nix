{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;}
    {
      systems = ["x86_64-linux"];
      perSystem = {pkgs, ...}: {
        devShells.default = pkgs.mkShellNoCC {
          packages = with pkgs; [
            atkinson-hyperlegible-next
            atkinson-hyperlegible-mono

            font-awesome
            font-awesome_6

            harper

            gelasio

            inter

            typst
            typstyle
            typstPackages.fontawesome
          ];
        };

        formatter = pkgs.alejandra;
      };
    };
}
