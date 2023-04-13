# not using home manager configuration because its ASS

{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    # dependency for nvim treesitter
    gcc

    # lsp dependencies
    rnix-lsp
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };

  home.file."./.config/nvim/" = {
    source = ./nvim;
    recursive = true;
  };
}
