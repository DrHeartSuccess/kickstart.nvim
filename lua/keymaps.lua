-- [[ Basic Keymaps ]]

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n><cmd>q<CR>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<A-k>', ':resize -2<CR>', { desc = 'Resize split up' })
vim.keymap.set('n', '<A-j>', ':resize +2<CR>', { desc = 'Resize split down' })
vim.keymap.set('n', '<A-h>', ':vertical resize -2<CR>', { desc = 'Resize split left' })
vim.keymap.set('n', '<A-l>', ':vertical resize +2<CR>', { desc = 'Resize split right' })

vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>', { desc = 'Toggle terminal' })

vim.keymap.set('n', '<C-p>', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })

vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<cmd>w<cr><Esc>', { desc = 'Save file' })

vim.keymap.set('n', '<A-q>', ':close<CR>', { noremap = true, silent = true, desc = 'Close current window' })

vim.keymap.set('n', '\\', '<cmd>Oil<Space>--float<CR>', { desc = 'Open Oil file explorer' })
