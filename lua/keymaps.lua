-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
local keymap = vim.keymap

keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
keymap.set("n", "Q", "<nop>")

-- escape insert mode with `jk`
keymap.set("i", "jk", "<esc>")

-- move code blocks inside code blocks
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- cursor remains at the same place when you append a line to the one above it with J
keymap.set("n", "J", "mzJ`z")

-- keeps the cursor in the middle when moving half pages
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keep the cursor in the middle when searching stuff
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- copy and paste without loosing the original thing you copied
keymap.set("x", "<leader>p", "\"_dp")

keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")

keymap.set("n", "<leader>d", "\"_d")
keymap.set("v", "<leader>d", "\"_d")

-- replace the word you're on over the whole buffer
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- write 
keymap.set("n", "<leader>fo", "<cmd>lua vim.lsp.buf.format()<cr>")

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
-- Open a new tab and then choose which file you want to open in it
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- Choose which file to open first
-- keymap.set('n', 'te', ':tabedit')

-- Travel between tabs
keymap.set('n', '<Tab>', ':tabnext<Return>')
keymap.set('n', '<S-Tab>', ':tabprev<Return>')

-- Split window
keymap.set('n', '<leader>ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w', { silent = true })

-- Change the 'moving through windows'(?) prefix, <C-w>, to <leader>g.
-- g as in 'go', I guess? idk
keymap.set('', '<leader>g', '<C-w>')

--[[ keymap.set('', '<leader>gh', '<C-w>h')
keymap.set('', '<leader>gk', '<C-w>k')
keymap.set('', '<leader>gj', '<C-w>j')
keymap.set('', '<leader>gl', '<C-w>l') ]]

-- Resize window
keymap.set('n', '<leader>g<left>', '<C-w>>')
keymap.set('n', '<leader>g<right>', '<C-w><')
keymap.set('n', '<leader>g<up>', '<C-w>+')
keymap.set('n', '<leader>g<down>', '<C-w>-')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
