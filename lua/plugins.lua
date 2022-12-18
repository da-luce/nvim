-- Use a protected call so don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
        },
        git = {
            clone_timeout = 300, -- Timeout, in seconds, for git clones
        },
}

return packer.startup(function(use)

    -- Packer
    use 'wbthomason/packer.nvim'

    -- Colorschemes
    use 'folke/tokyonight.nvim'
    use 'cocopon/iceberg.vim'
    use 'marko-cerovac/material.nvim'
    use 'kyazdani42/blue-moon'
    use 'sainnhe/edge'
    use 'bkegley/gloombuddy'
    use 'shaunsingh/nord.nvim'
    use 'shaunsingh/moonlight.nvim'
    use 'navarasu/onedark.nvim'
    use 'yashguptaz/calvera-dark.nvim'
    use 'catppuccin/nvim'
    use 'FrenzyExists/aquarium-vim'
    use 'olimorris/onedarkpro.nvim'
    use 'rebelot/kanagawa.nvim'
    use 'Yazeed1s/minimal.nvim'
    use 'embark-theme/vim'
    use 'Domeee/mosel.nvim'
    use 'rose-pine/neovim'
    use 'tiagovla/tokyodark.nvim'
    use 'projekt0n/github-nvim-theme'

    -- dependencies
    use 'nvim-lua/plenary.nvim'

    use {
        'folke/noice.nvim',
        requires = 'MunifTanjim/nui.nvim',
    }

    use {
        'akinsho/toggleterm.nvim',
        config = function()
            require("plugins.toggleterm")
        end
    }

    --[[ dashboard
    use {
        'goolord/alpha-nvim',
        config = function()
            require("plugins.alpha")
        end
    }--]]

    --[[ scrollbar
    use {
        'petertriho/nvim-scrollbar',
        config = function()
            require("plugins.scrol::xlbar")
        end
    }
    --]]

    -- better search bar
    use {
        'VonHeikemen/searchbox.nvim',
        requires = {
            {'MunifTanjim/nui.nvim'}
        }
    }

    -- Auto pair brackets, parenthesis, etc. 
    use {
        'windwp/nvim-autopairs',
        config = function()
            require("plugins.autopairs")
        end
    }

    -- Symbol outline
    use {
        'simrat39/symbols-outline.nvim',
        config = function()
            require("plugins.outline")
        end
    }
    
    --[[
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'wislliamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        },
        config = function()
            require("plugins.lsp-zero")
        end
    }
    --]]

    -- Breadcrumbs
    use {
        'SmiteshP/nvim-navic',
        requires = "neovim/nvim-lspconfig",
        config = function()
            require("plugins.breadcrumbs")
        end
    }

    -- Git support
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require("plugins.gitsigns")          -- Git signs
        end
    }
    use 'tpope/vim-fugitive'                    -- Git integration

    -- LSP Setup
    use {
        'williamboman/mason.nvim',
        config = function()
            require("plugins.mason")
        end
    }
    use {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require("plugins.mason-lsp")
        end
    }
    use 'neovim/nvim-lspconfig'

    -- Start screen
    use {
        'glepnir/dashboard-nvim',
        config = function()
            require("plugins.dashboard")
        end
    }

    -- Which key (why?)
    use 'folke/which-key.nvim'

    use {
        'hrsh7th/nvim-cmp',         -- Autocompletion
        config = function()
            require("plugins.cmp")
        end
    }
    use 'hrsh7th/cmp-buffer'        -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-path'          -- nvim-cmp source for filesystem paths
    use 'hrsh7th/cmp-cmdline'       -- nvim-cmp source for vim's cmdline
    use 'hrsh7th/cmp-nvim-lsp'      -- nvim-cmp source for Neovim builtin LSP client
    use 'hrsh7th/cmp-nvim-lua'      -- nvim-cmp source for the Neovim Lua API
    use 'f3fora/cmp-spell'          -- nvim-cmp source for vim's spellsuggest

    -- Display diagnostics
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("plugins.trouble")
        end
    }


    -- Buffer tabs
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'ryanoasis/vim-devicons',
        config = function()
            require("plugins.bufferline")
        end
    }

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {
            {'nvim-lua/plenary.nvim'}, -- general 
            {'nvim-treesitter/nvim-treesitter'}, -- finder/preview highlighting
            {'BurntSushi/ripgrep'}, --required for live_grep and grep_string
            {'nvim-telescope/telescope-fzf-native.nvim'}, -- better sorting performance

        },
        config = function()
            require("plugins.telescope")
        end
    }
    use 'nvim-telescope/telescope-file-browser.nvim'

    -- Better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require("plugins.treesitter")
        end
    }

    -- Spell checker?
    use {
        'lewis6991/spellsitter.nvim',
        config = function()
            require("plugins.spellsitter")
        end
    }

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            {'kyazdani42/nvim-web-devicons', opt = true}
        },
        config = function()
            require("plugins.lualine")
        end
    }

    -- File explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly', -- optional, updated every week. (see issue #1193)
        config = function()
            require("plugins.nvim-tree")
        end
    }

    -- Show tab indents
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require("plugins.blankline")
        end
    }

end)
