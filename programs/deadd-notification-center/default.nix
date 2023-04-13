{ inputs, pkgs, ... }: 

let
  yamlFormat = pkgs.formats.yaml { };  
  
  settings = {
    width = 500;
  };
in {
  home.packages = with pkgs; [
    deadd-notification-center
    libnotify
  ];

  home.file."./.config/deadd/deadd.yml".source = yamlFormat.generate "deadd.yml" settings;
  home.file."./.config/deadd/deadd.css".source = ./deadd.css;
} 
