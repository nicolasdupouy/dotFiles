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
    'nvim-lualine/lualine.nvim',
    -- Telescope
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2'
    },
    -- Completion
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    -- Snippets
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    "rafamadriz/friendly-snippets",

    -- Managing and installing LSP servers
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- Configure LSP servers
    'neovim/nvim-lspconfig',
}

local opts = {}

require("lazy").setup(plugins, opts)
