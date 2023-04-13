{ pkgs, ... }: {
  home.packages = with pkgs; [
    zsh
    starship
  ]; 

  programs.zsh = {
    enable = true;
    enableSyntaxHighlighting = true;

    initExtra = ''
      zmodload zsh/complist
      bindkey -M menuselect 'h' vi-backward-char
      bindkey -M menuselect 'k' vi-up-line-or-history
      bindkey -M menuselect 'j' vi-down-line-or-history
      bindkey -M menuselect 'l' vi-forward-char

      autoload -U compinit; compinit

      zstyle ':completion:*' menu select
      zstyle ':completion:*' group-name "" 
      zstyle ':completion:*' file-list all
      zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
      zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'

      eval "$(starship init zsh)"
      krabby random
    '';

    shellAliases = {
      flake = "cd ~/flake; doas nixos-rebuild switch --flake .#sylvia";
      ls = "ls --color=auto";
      ll = "ls -la";
      rm = "rm -i";
      mv = "mv -i";
      ".." = "cd ..";
      sudo = "doas";
      icat = "kitty +kitten icat";
    };

    # I know its better to just copy and paste the scripts and source it but
    # this has lazy loading and im all for it
    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        { name = "Tarrasch/zsh-bd"; }
      ];
    };
  };

  programs.starship = {
    enable = true;
    settings = {};
  };
}
