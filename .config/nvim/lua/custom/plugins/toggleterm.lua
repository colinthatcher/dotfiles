return {
  {
    'akinsho/toggleterm.nvim',
    opts = {
      open_mapping = [[<c-t>]],
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
    },
    --   keys = {
    --     {
    --       '<leader>gg',
    --       function()
    --         _lazygit_toggle()
    --       end,
    --       mode = 'n',
    --       desc = 'lazygit',
    --     },
    --   },
    --   config = function()
    --     local Terminal = require('toggleterm.terminal').Terminal
    --     local lazygit = Terminal:new { cmd = 'lazygit', hidden = true, direction = 'float' }
    --     function _lazygit_toggle()
    --       lazygit:toggle()
    --     end
    --   end,
  },
}
