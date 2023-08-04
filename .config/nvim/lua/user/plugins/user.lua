return {
  -- You can also add new plugins here as well:
  "EdenEast/nightfox.nvim",
  {
    "akinsho/toggleterm.nvim",
    opts = {
      open_mapping = [[<c-t>]],
    },
  },
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
