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
        prompt_border = 'single',
}

return packer.startup(function(use)

    -- Plugin manager
    use 'wbthomason/packer.nvim'

    -- Improved start speed
    use {
        'lewis6991/impatient.nvim',
        config = function()
            require('impatient').enable_profile()
        end
    }

    -- USER INTERFACE

    -- Colorschemes
    use 'tiagovla/tokyodark.nvim'
    use 'folke/tokyonight.nvim'
    use 'catppuccin/nvim'
    use 'sam4llis/nvim-tundra'
    use 'hoppercomplex/calvera-dark.nvim'

    -- Common dependencies
    use 'nvim-lua/plenary.nvim'

    -- Start screen
    use {
        'glepnir/dashboard-nvim',
        config = function()
            require("plugins.config.dashboard")
        end
    }

    -- File explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        tag = 'nightly',
        config = function()
            require("plugins.config.nvim-tree")
        end
    }

    -- Buffers
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'ryanoasis/vim-devicons',
        config = function()
            require("plugins.config.bufferline")
        end
    }
    use 'famiu/bufdelete.nvim'  -- Preserve window layout when deleting buffers

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            {'kyazdani42/nvim-web-devicons', opt = true}
        },
        config = function()
            require("plugins.config.lualine")
        end
    }

    -- EDITOR PLUGINS

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require("plugins.config.gitsigns")
        end
    }
    use 'tpope/vim-fugitive'

    -- Show tab indents
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require("plugins.config.blankline")
        end
    }

    -- Auto pair brackets, parenthesis, etc. 
    use {
        'windwp/nvim-autopairs',
        config = function()
            require("plugins.config.autopairs")
        end
    }

    -- Smooth scrolling
    use {
        'karb94/neoscroll.nvim',
        config = function ()
            require("plugins.config.neoscroll")
        end
    }

    -- GENERAL/CORE

    -- Sessions
    use {
        'rmagatti/auto-session',
        config = function()
            require("plugins.config.auto-session")
        end
    }
    use {
        'rmagatti/session-lens',
        requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
        config = function()
            require("plugins.config.session-lens")
        end
    }


    -- Manage and install LSP servers
    use 'williamboman/mason-lspconfig.nvim'
    use {
        'williamboman/mason.nvim',
        config = function()
            require("plugins.config.mason")
        end
    }

    -- Config for LSP Servers
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require("plugins.config.lspconfig")
        end
    }

    -- Breadcrumbs (not implemented yet)
    use {
        'SmiteshP/nvim-navic',
        requires = "neovim/nvim-lspconfig",
        config = function()
            require("plugins.config.breadcrumbs")
        end
    }

    -- Which key
    use {
        'folke/which-key.nvim',
        config = function ()
            require("plugins.config.which-key")
        end
    }

    -- Autocompletion
    use {
        'hrsh7th/nvim-cmp',
        config = function()
            require("plugins.config.cmp")
        end
    }
    use 'hrsh7th/cmp-buffer'        -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-path'          -- nvim-cmp source for filesystem paths
    use 'hrsh7th/cmp-cmdline'       -- nvim-cmp source for vim's cmdline
    use 'hrsh7th/cmp-nvim-lsp'      -- nvim-cmp source for Neovim builtin LSP client
    use 'hrsh7th/cmp-nvim-lua'      -- nvim-cmp source for the Neovim Lua API
    use 'f3fora/cmp-spell'          -- nvim-cmp source for vim's spellsuggest

    -- Snippets
    use({"L3MON4D3/LuaSnip", tag = "v1.*"})

    -- Display diagnostics
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("plugins.config.trouble")
        end
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {
            {'nvim-lua/plenary.nvim'},                      -- general 
            {'nvim-treesitter/nvim-treesitter'},            -- finder/preview highlighting
            {'BurntSushi/ripgrep'},                         -- required for live_grep and grep_string
            {'nvim-telescope/telescope-fzf-native.nvim'},   -- better sorting performance
            {'nvim-telescope/telescope-file-browser.nvim'}, -- file browser
        },
        config = function()
            require("plugins.config.telescope")
        end
    }

    -- Better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require("plugins.config.treesitter")
        end
    }

end)
