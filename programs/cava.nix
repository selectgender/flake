{ pkgs, aesthetics, ... }: 
let 
  tomlFormat = pkgs.formats.toml { };

  scheme = aesthetics.current-scheme;
  settings = {
    color = {
      gradient = 1;
      gradient_color_1 = scheme.base07;
      gradient_color_2 = scheme.base08;
      gradient_color_3 = scheme.base09;
      gradient_color_4 = scheme.base0A;
      gradient_color_5 = scheme.base0B;
      gradient_color_6 = scheme.base0C;
      gradient_color_7 = scheme.base0D;
      gradient_color_8 = scheme.base0E;
      gradient_color_9 = scheme.base0F;
    };
  };
in {
  home.packages = with pkgs; [
    cava
  ];

  home.file."./.config/cava/config".source = tomlFormat.generate "config" settings;
}
