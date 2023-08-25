local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Window related plugins
    'christoomey/vim-tmux-navigator',
    'szw/vim-maximizer',
    -- File explorer
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    -- Theme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    -- Status bar
    'nvim-lualine/lualine.nvim'
}

local opts = {}

require("lazy").setup(plugins, opts)
