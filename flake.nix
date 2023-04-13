# TODO: make global base16 theming
{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
    xdph.url = "github:hyprwm/xdg-desktop-portal-hyprland";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, hyprland, xdph, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
      aesthetics = import ./aesthetics {};
    in {
      nixosConfigurations = {
        sylvia = lib.nixosSystem {
          inherit system;
          modules = [
            ./core/configuration.nix

            home-manager.nixosModules.home-manager {
              home-manager.extraSpecialArgs = { inherit inputs aesthetics; };
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.sylvia.imports = [
                ./home
                ./programs
              ];
            }

            hyprland.nixosModules.default
            {programs.hyprland.enable = true;}
          ];
        };
      };

      xdg.portal = {
        enable = true;
        # xdg-desktop-portal-hyprland
        extraPortals = [
          (inputs.xdph.packages.x86_64-linux.default.override {
            hyprland-share-picker = inputs.xdph.packages.x86_64-linux.hyprland-share-picker.override { inherit hyprland; };
          })
        ];
      };
    };
}
