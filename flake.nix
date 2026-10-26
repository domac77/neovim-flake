{
  description = "My Neovim configuration via Nixvim";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = inputs@{ nixvim, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { system, ... }:
      let
        configuration = nixvim.lib.evalNixvim {
          inherit system;
          modules = [ ./config ];
          extraSpecialArgs = {};
        };
      in {
        checks.default = configuration.config.build.test;
        packages.default = configuration.config.build.package;
      };
    };
}
