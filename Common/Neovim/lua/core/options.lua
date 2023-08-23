--# NeoVim options
-- * :h option-list
-- * https://neovim.io/doc/user/quickref.html#option-list

-- Behaviour options
vim.opt.autoread = true         -- autom. read file when changed outside of Vim

-- Search options
vim.opt.ignorecase = true       -- ignore case in search patterns
vim.opt.smartcase = true        -- no ignore case when pattern has uppercase
vim.opt.hlsearch = true         -- highlight matches with last search pattern

-- Display options
-- -- Global
vim.opt.cursorline = true       -- highlight the screen line of the cursor
-- -- Wrap
vim.opt.wrap = true             -- long lines wrap and continue on the next line
vim.opt.breakindent = true      -- wrapped line repeats indent
-- -- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- -- Tabs
--vim.opt.tabstop = 2             -- number of spaces that <Tab> in file uses
vim.opt.shiftround = true       -- round indent to multiple of shiftwidth
--vim.opt.shiftwidth = 2          -- number of spaces to use for (auto)indent step
vim.opt.expandtab = true        -- use spaces when <Tab> is inserted
-- --Line numbers
vim.opt.number = true
vim.wo.number = true

vim.cmd [[ set noswapfile ]]
