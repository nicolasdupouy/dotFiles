-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})

-- " " for leader = SPACE
vim.g.mapleader = " "

-- General keymaps
vim.keymap.set('n', '<leader>nh', ':nohl<CR>')              -- Stop search highlight
vim.keymap.set('n', '<leader>+', '<C-a>')                   -- Increment selected number
vim.keymap.set('n', '<leader>-', '<C-x>')                   -- Decrement selected number

-- Split
vim.keymap.set('n', '<Leader>sv', '<C-w>v')                 -- Split vertically
vim.keymap.set('n', '<Leader>sh', '<C-w>s')                 -- Split horizontally
vim.keymap.set('n', '<Leader>se', '<C-w>=')                 -- Make split windows equals width
vim.keymap.set('n', '<Leader>sx', ':close<CR>')             -- Close current split window

-- Tabs
vim.keymap.set('n', '<Leader>to', ':tabnew<CR>')            -- Open new tab
vim.keymap.set('n', '<Leader>tx', ':tabclose<CR>')            -- Open new tab
vim.keymap.set('n', '<Leader>tn', ':tabn<CR>')            -- Open new tab
vim.keymap.set('n', '<Leader>tp', ':tabp<CR>')            -- Open new tab

-- Navigate vim panes better
vim.keymap.set('n', '<C-Up>', ':wincmd k<CR>')              -- Navigate to the buffer which is up
vim.keymap.set('n', '<C-Down>', ':wincmd j<CR>')            -- Navigate to the buffer which is down
vim.keymap.set('n', '<C-Left>', ':wincmd h<CR>')            -- Navigate to the buffer at the right
vim.keymap.set('n', '<C-Right>', ':wincmd l<CR>')           -- Navigate to the buffer at the left

vim.keymap.set('n', '<Leader><Up>', ':wincmd k<CR>')
vim.keymap.set('n', '<Leader><Down>', ':wincmd j<CR>')
vim.keymap.set('n', '<Leader><Left>', ':wincmd h<CR>')
vim.keymap.set('n', '<Leader><Right>', ':wincmd l<CR>')

-- nvim-tree
vim.keymap.set('n', '<Leader>t', ':NvimTreeToggle<CR>')
