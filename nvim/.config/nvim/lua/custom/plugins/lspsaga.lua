return {
  'nvimdev/lspsaga.nvim',
  enabled = true,
  event = 'LspAttach',
  config = function()
    require('lspsaga').setup {
      rename = {
        keys = {
          quit = {
            "<Esc>",
          }
        },
      }
    }
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons', -- optional
  },
  options = {
    rename = {
      auto_save = true,
      in_select = false,
    }
  }
}
