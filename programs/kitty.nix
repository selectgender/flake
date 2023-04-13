{ pkgs, config, aesthetics, ... }: 
let
  scheme = aesthetics.current-scheme;
  opacity = aesthetics.terminal-opacity;
in
{
  home.packages = with pkgs; [
    kitty
  ];

  programs.kitty = {
    enable = true;
    settings = {
      font_family = "JetBrainsMono Nerd Font";
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";

      font_size = 12;
      
      disable_ligatures = "never";
      enable_audio_bell = false;
      visual_bell_duration = 0;

      confirm_os_window_close = 0;
      background_image = "none";

      # The basic colors
      background                      = scheme.base00;
      foreground                      = scheme.base05;
      selection_background            = scheme.base02;
      selection_foreground            = scheme.base06;

      cursor                          = scheme.base02;
      cursor_text_color               = scheme.base06;

      # black
      color0 = scheme.base00;
      color8 = scheme.base02;

      # red
      color1 = scheme.base08;
      color9 = scheme.base08;

      # green
      color2  = scheme.base0B;
      color10 = scheme.base0B;

      # yellow
      color3  = scheme.base0A;
      color11 = scheme.base0A;

      # blue
      color4  = scheme.base0D;
      color12 = scheme.base0D;

      # magenta
      color5  = scheme.base0E;
      color13 = scheme.base0E;

      # cyan
      color6  = scheme.base0C;
      color14 = scheme.base0C;

      # white
      color7  = scheme.base05;
      color15 = scheme.base05;
    };

    extraConfig = ''
      background_opacity ${toString opacity}
    '';
  };
}
