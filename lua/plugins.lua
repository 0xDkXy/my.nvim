

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'wakatime/vim-wakatime'
    
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function()
            require("neo-tree").setup({
                window = {
                    position = "left",
                    width = 30
                }
            })
        end
    }

    use {
        'wfxr/minimap.vim', 
        opt = true,
        cmd = "MinimapClose",
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() 
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true})
            ts_update()
        end,
    }
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'nvim-lua/plenary.nvim'

    use({
        "epwalsh/obsidian.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("obsidian").setup({
                dir = "~/workplace/Notes",
            })
        end,
    })

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        }
    }

    -- emial MUA 
    use 'https://git.sr.ht/~soywod/himalaya-vim'

    -- bufer line
    use {
        "akinsho/bufferline.nvim",
        tag = "*",
        requires = "nvim-tree/nvim-web-devicons"
    }

    -- enhance marks
    use 'chentoast/marks.nvim'

    -- flash.nvim enhanced find
    use 'folke/flash.nvim'

    --[[
    use {
        "gelguy/wilder.nvim"
    }
    --]]

    use 'hrsh7th/cmp-cmdline'

end)

