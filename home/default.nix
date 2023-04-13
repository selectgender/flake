{ config, pkgs, inputs, ... }: 
let
  unstable = import inputs.nixpkgs {
    inherit (pkgs) system;
    config.allowUnfree = true;
  };
in {
  imports = [
    ./font.nix
  ];

  home.username = "sylvia";
  home.homeDirectory = "/home/sylvia";

  home.packages = with pkgs; [
    firefox
    hyfetch
    mpv
    pavucontrol
    htop
    zathura

    unstable.krabby
    unstable.webcord
    unstable.swww
  ];
  
  # you can update home manager without changing this value
  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
}
