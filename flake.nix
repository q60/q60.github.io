{
  description = "blog";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    theme = {
      url = "github:ejmg/zerm";
      flake = false;
    };
  };

  outputs = {
    self,
    nixpkgs,
    theme,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};

    theme-name =
      (builtins.fromTOML
        (builtins.readFile "${theme}/theme.toml"))
      .name;
  in {
    packages.${system} = {
      default = pkgs.stdenv.mkDerivation {
        name = "blog";

        src = ./.;

        nativeBuildInputs = [pkgs.zola];

        buildPhase = ''
          mkdir -p "themes/${theme-name}"
          cp -r "${theme}"/* "themes/${theme-name}/"

          zola build
        '';

        installPhase = ''
          cp -r public $out
        '';
      };
    };

    devShell.${system} = pkgs.mkShell {
      packages = [pkgs.zola];

      shellHook = ''
        mkdir -p themes
        ln -sn "${theme}" "themes/${theme-name}"
      '';
    };
  };
}
