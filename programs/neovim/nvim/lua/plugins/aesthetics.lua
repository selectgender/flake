return {
  {
    "norcalli/nvim-base16.lua",
    lazy = false,
    priority = 1000,
    config = function ()
      local base16 = require("base16")

      -- catppuccin macchiato
      local theme = base16.theme_from_array({
       "24273a", -- base
       "1e2030", -- mantle
       "363a4f", -- surface0
       "494d64", -- surface1
       "5b6078", -- surface2
       "cad3f5", -- text
       "f4dbd6", -- rosewater
       "b7bdf8", -- lavender
       "ed8796", -- red
       "f5a97f", -- peach
       "eed49f", -- yellow
       "a6da95", -- green
       "8bd5ca", -- teal
       "8aadf4", -- blue
       "c6a0f6", -- mauve
       "f0c6c6", -- flamingo
      })

      base16(theme, true)
    end
  },
  {
    "norcalli/nvim-colorizer.lua",
    cmd = "ColorizerToggle",
    config = function ()
      require 'colorizer'.setup()
    end,
  }
}
