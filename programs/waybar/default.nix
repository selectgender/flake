{ inputs, pkgs, ... }: {
  home.packages = with pkgs; [
    waybar
  ];

  programs.waybar = {
    enable = true;
    style = ./styles.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        font-family = "JetBrainsMono Nerd Font";
        spacing = 5;
        modules-center = [ "custom/hello-from-waybar" ];
        modules-right = [ "pulseaudio" "clock" ];
        pulseaudio = {
            format = "{volume}% {icon} {format_source}";
            format-bluetooth = "{volume}% {icon} {format_source}";
            format-bluetooth-muted = " {icon} {format_source}";
            format-muted = " {format_source}";
            format-source = "{volume}% ";
            format-source-muted = "";
            format-icons = {
                headphone = "";
                hands-free = "";
                headset = "";
                phone = "";
                portable = "";
                car = "";
                default = ["" "" ""];
            };
            on-click = "pavucontrol";
        };
        clock = {
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          format-alt = "{:%Y-%m-%d}";
        };
        "custom/hello-from-waybar" = {
          format = "hello {}";
          max-length = 40;
          interval = "once";
          exec = pkgs.writeShellScript "hello-from-waybar" ''
            echo "unchanged"
          '';
        };
      };
    };
  };
} 
