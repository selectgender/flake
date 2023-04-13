{ inputs, pkgs, ... }: {
  home.packages = with pkgs; [
    wofi
  ];

  home.file."./.config/wofi/style.css".source = ./style.css;
  home.file."./.config/wofi/config".source = pkgs.writeShellScript "config" ''
    width=400
    height=250
    location=center
    show=drun
    prompt=Search...
    filter_rate=100
    allow_markup=true
    no_actions=true
    halign=fill
    orientation=vertical
    content_halign=fill
    insensitive=true
    allow_images=true
    image_size=25
    gtk_dark=true
  '';
}
