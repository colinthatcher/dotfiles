return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.harpoon" },
  { "ThePrimeagen/harpoon", keys = {
    { "<leader>hh", function() require("harpoon.mark").add_file() end, desc = "Add file" },
    { "<leader>hv", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle quick menu" },
    { "<leader>ha", function() require("harpoon.ui").nav_file(1) end, desc = "Nav file 1" },
    { "<leader>hr", function() require("harpoon.ui").nav_file(2) end, desc = "Nav file 2" },
    { "<leader>hs", function() require("harpoon.ui").nav_file(3) end, desc = "Nav file 3" },
    { "<leader>ht", function() require("harpoon.ui").nav_file(4) end, desc = "Nav file 4" },
  }},

  -- language packs
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.lua" },
}
