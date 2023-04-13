return {
  {
    "nvim-treesitter/nvim-treesitter",
    ft = { "nix", "norg" },
    config = function ()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "nix", "norg" },
        highlight = {
          enable = true;
        },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    ft = "nix",
    config = function ()
      local lspconfig = require("lspconfig")
      lspconfig.rnix.setup {}
    end
  }
}
