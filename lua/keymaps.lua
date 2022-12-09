vim.g.mapleader = " "

local keymap = vim.api.nvim_set_keymap

keymap('n','<c-s>',':w<CR>',{})
keymap('i','<c-s>',':w<CR>',{})

local opts = {noremap = true}

keymap('n','<c-j>','<c-w>j',opts)
keymap('n','<c-h>','<c-w>h',opts)
keymap('n','<c-k>','<c-w>k',opts)
keymap('n','<c-l>','<c-w>l',opts)


keymap('n','<c><Down>','<c-w>j',opts)
keymap('n','<c><Left>','<c-w>h',opts)
keymap('n','<c><Up>','<c-w>k',opts)
keymap('n','<c><Right>','<c-w>l',opts)

keymap('n','f','<Plug>Sneak_f',opts)
keymap('n','F','<Plug>Sneak_F',opts)

keymap('n','<leader>ee',':NvimTreeToggle<CR>',opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})

vim.cmd[[inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"]]
vim.cmd[[inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"]]
