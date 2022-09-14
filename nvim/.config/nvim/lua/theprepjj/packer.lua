return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- Simple plugins can be specified as strings
    use('TimUntersberger/neogit')
    use('tpope/vim-fugitive')

    -- TJ created lodash of neovim
    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim')

    -- I like all this
    use('neovim/nvim-lspconfig')
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')

    use('windwp/nvim-autopairs')
    use('terrortylor/nvim-comment')

    use('jose-elias-alvarez/null-ls.nvim')

    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')

    -- Primeagen doesn't create lodash 
    use('ThePrimeagen/git-worktree.nvim')
    use('ThePrimeagen/harpoon')

    use("mbbill/undotree")

    -- Debugging not needed
    use('theHamsta/nvim-dap-virtual-text')
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("leoluz/nvim-dap-go")

    -- Colorscheme section
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")

    use('nvim-treesitter/nvim-treesitter', {
        run = ':TSUpdate'
    })

    use('nvim-treesitter/playground')
    use('romgrk/nvim-treesitter-context')

end)
