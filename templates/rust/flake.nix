{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";
    devenv.url = "github:cachix/devenv";
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = {
    nixpkgs,
    devenv,
    systems,
    ...
  } @ inputs: let
    forEachSystem = nixpkgs.lib.genAttrs (import systems);
  in {
    devShells =
      forEachSystem
      (system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        default = devenv.lib.mkShell {
          inherit inputs pkgs;
          modules = [
            {
              # https://devenv.sh/reference/options/
              dotenv.disableHint = true;

              # setup openssl for reqwest (if used)
              env = {
                PKG_CONFIG_PATH = "${pkgs.openssl.dev}/lib/pkgconfig";
              };

              packages = with pkgs; [ bacon ];

              languages.rust = {
                enable = true;
                channel = "stable";
                components = [ "rustc" "cargo" "clippy" "rustfmt" "rust-analyzer" ];
              };
              pre-commit.hooks = {
                 rustfmt.enable = true;
                 clippy.enable = true;
              };
            }
          ];
        };
      });
  };
}
