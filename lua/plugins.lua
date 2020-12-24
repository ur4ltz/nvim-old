-- vim: ts=4 sw=4 et:

vim.cmd [[packadd packer.nvim]]

vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}

    use {
        'gruvbox-community/gruvbox',
        config = function()
            vim.o.background = 'dark'
            vim.g.gruvbox_italics = true
            vim.g.gruvbox_contrast_dark = 'hard'
            vim.cmd('colorscheme gruvbox')
        end,
    }

    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        config = function()
            -- require('modules.eviline')
            require('modules.spaceline')
        end,
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use {
        'kyazdani42/nvim-tree.lua',
        config = function()
            require('conf.tree-config').setup()
        end,
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end,
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        requires = {
            {'nvim-treesitter/nvim-treesitter-refactor', after = 'nvim-treesitter'},
            {'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter'}
        },
        config = "require('conf.nvim-treesitter').config()"
    }

    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('conf.nvim-lspconfig')
        end,
--        requires = {
--            'nvim-lua/lsp-status.nvim'
--        },
    }
    use {
        'RishabhRD/nvim-lsputils',
        requires = {
            'RishabhRD/popfix'
        }
    }

    use {
        'nvim-lua/completion-nvim',
        requires = {
            'hrsh7th/vim-vsnip',
            'hrsh7th/vim-vsnip-integ',
            'steelsojka/completion-buffers',
            'nvim-treesitter/completion-treesitter'
        },
        config = "require('conf.completion-nvim').setup()",
        -- config = "require('conf.completion-nvim').config()"
    }

    use {
        'nvim-telescope/telescope.nvim',
        config = function()
            require('conf.telescope')
        end,
        requires = {
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim'
        },
    }

    use {
        'mhinz/vim-startify',
        config = function()
            require('conf.startify')
        end,
    }

    use {'mhinz/vim-signify'}

    use {
        'simnalamburt/vim-mundo',
        config = function()
            vim.g.mundo_width          = 60
            vim.g.mundo_preview_bottom = true
        end,
    }

    use 'PotatoesMaster/i3-vim-syntax'

end)

