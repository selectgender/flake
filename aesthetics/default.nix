# here are the standards for base16 in case yer implementing it
# https://github.com/chriskempson/base16/blob/main/styling.md

{ ... }: 
let
  colorschemes = import ./colorschemes.nix {};
in {
  inherit colorschemes;
  wallpaper = ./wallpapers/catppuccin-macchiato.jpg;
  current-scheme = colorschemes.catppuccin-macchiato;
  terminal-opacity = 0.8;
}
