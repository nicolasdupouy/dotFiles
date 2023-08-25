-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})

-- " " for leader = SPACE
vim.g.mapleader = " "

-- General keymaps
vim.keymap.set('n', '<leader>nh', ':nohl<CR>')              -- Stop search highlight
vim.keymap.set('n', '<leader>+', '<C-a>')                   -- Increment selected number
vim.keymap.set('n', '<leader>-', '<C-x>')                   -- Decrement selected number

-- Split
vim.keymap.set('n', '<leader>sv', '<C-w>v')                 -- Split vertically
vim.keymap.set('n', '<leader>sh', '<C-w>s')                 -- Split horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=')                 -- Make split windows equals width
vim.keymap.set('n', '<leader>sx', ':close<CR>')             -- Close current split window

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>')            -- Open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>')            -- Open new tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>')            -- Open new tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>')            -- Open new tab

-- Navigate vim panes better
vim.keymap.set('n', '<C-Up>', ':wincmd k<CR>')              -- Navigate to the buffer which is up
vim.keymap.set('n', '<C-Down>', ':wincmd j<CR>')            -- Navigate to the buffer which is down
vim.keymap.set('n', '<C-Left>', ':wincmd h<CR>')            -- Navigate to the buffer at the right
vim.keymap.set('n', '<C-Right>', ':wincmd l<CR>')           -- Navigate to the buffer at the left
-- With vim-tmux-navigator
-- <ctrl-h> => Left
-- <ctrl-j> => Down
-- <ctrl-k> => Up
-- <ctrl-l> => Right

-- Plugins keymaps
-- vim-maximize
vim.keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>')

-- nvim-tree
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>')
