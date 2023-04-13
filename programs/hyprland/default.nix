{ inputs, pkgs, lib, aesthetics, ... }: 
let
  wallpaper = aesthetics.wallpaper;
  scheme = aesthetics.current-scheme;
in
{
  imports = [
    inputs.hyprland.homeManagerModules.default
  ];

  home.packages = with pkgs; [
    grim
    slurp
    wl-clipboard
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = import ./config.nix { inherit pkgs lib wallpaper scheme; };
  };
} 
