-- Git related plugins
return {
  {'tpope/vim-fugitive'},
  {'tpope/vim-rhubarb'},
  {
    'lewis6991/gitsigns.nvim',
    config = function ()
      -- See `:help gitsigns.txt`
      require('gitsigns').setup {
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
      }
    end
  },
}
