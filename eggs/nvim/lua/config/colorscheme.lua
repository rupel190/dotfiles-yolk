return {
  -- Configure LazyVim to load theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
  { "folke/tokyonight.nvim", enabled = false }, -- very persistent default
  { "ellisonleao/gruvbox.nvim", enabled = false },
  -- Add/set catppuccin
  {
    "catppuccin/nvim",
    enabled = true,
    name = "catppuccin",
    priority = 1000,
    -- config = function()
    --   require("catppuccin").setup({
    --     flavor = "macchiato",
    --   })
    -- end,
  },
}
