-- Lazy.nvim
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


require("lazy").setup({
    -- Neotree
    { 'nvim-neo-tree/neo-tree.nvim', branch = "v2.x" },
    -- UI
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-tree/nvim-web-devicons' },
    { 's1n7ax/nvim-window-picker' },
    { 'MunifTanjim/nui.nvim' },
    -- Syntax highlight
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    -- LSP
    { 'neovim/nvim-lspconfig' },
    { 'prabirshrestha/vim-lsp' },
    { 'mattn/vim-lsp-settings' },
    { 'folke/trouble.nvim' },
    { 'weilbith/nvim-code-action-menu' },
    -- Colortheme
    { 'ellisonleao/gruvbox.nvim', priority = 1000 },
    -- Autocomplete
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { '/hrsh7th/cmp-nvim-lua' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-emoji' },
    { 'lewis6991/gitsigns.nvim' },
    { 'hrsh7th/vim-vsnip' },
    { 'onsails/lspkind.nvim' },
    { 'j-hui/fidget.nvim', branch = 'legacy' },
    { 'simrat39/rust-tools.nvim' },
    -- Snippets
    { 'rafamadriz/friendly-snippets' },
    { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
    { 'saadparwaiz1/cmp_luasnip' },
    -- Mason
    { 'williamboman/mason.nvim', build = ':MasonUpdate' }, -- :MasonUpdate updates registry contents
    { 'williamboman/mason-lspconfig.nvim' },
    -- Transparent
    { 'xiyaowong/transparent.nvim' },
    -- Telescope
    { 'nvim-telescope/telescope.nvim', tag = '0.1.1' },
    { 'nvim-lua/plenary.nvim' },
    -- Format
    { 'jose-elias-alvarez/null-ls.nvim' },
    -- Auto close pairs/tags
    { 'windwp/nvim-autopairs' },
    { 'windwp/nvim-ts-autotag' },
    -- Buffer Line (вкладки)
    { 'akinsho/bufferline.nvim' },
    -- Comments
    { 'terrortylor/nvim-comment' },
    -- Dashboard
    { 'glepnir/dashboard-nvim', event = 'VimEnter' },
    -- Git
    { 'lewis6991/gitsigns.nvim' },
    -- Line
    { 'nvim-lualine/lualine.nvim' },
    -- Term
    { 'akinsho/toggleterm.nvim', version = "*", config = true },
    -- Which Key (leader)
    {
        'folke/which-key.nvim',
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
    -- Discord
    { 'andweeb/presence.nvim' },
    -- Hightlights word under cursor
    { 'yamatsum/nvim-cursorline' },
    -- Auto mkdir
    { 'jghauser/mkdir.nvim' },
    -- Hop
    { 'phaazon/hop.nvim' },
    -- flutter
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = true,
    },
    { 'dart-lang/dart-vim-plugin' },
    -- Surround
    { 'tpope/vim-surround' },
    -- HTML
    { 'mattn/emmet-vim' },
    { 'alvan/vim-closetag' },
    { 'AndrewRadev/tagalong.vim' },
    { 'barrett-ruth/live-server.nvim', build = 'yarn global add live-server', config = true
    },
    -- Colorizer
    { 'NvChad/nvim-colorizer.lua'},
})
