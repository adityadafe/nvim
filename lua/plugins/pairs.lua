return {
    {
        'windwp/nvim-autopairs',
        opts = function()
            require('nvim-autopairs').setup {
                disable_filetypes = { 'TelescopePrompt', 'vim' },
            }
        end
    },
    { 'tpope/vim-surround' },
    {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup {}
        end
    }
}
