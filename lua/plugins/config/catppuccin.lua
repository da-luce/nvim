local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
    return
end

local flavour = vim.api.nvim_get_option("background") == "dark" and "mocha" or "latte"
vim.g.catppuccin_flavour = flavour

catppuccin.setup({
    integrations = {
        navic = {
            enabled = true,
            custom_bg = "NONE",
        },
    },
	transparent_background = false,
	no_italic = false,
	color_overrides = {
		latte = {
			base = "#ffffff",
		},
	},
	styles = {
		comments = { "italic" },
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = { "bold" },
		booleans = {},
		properties = {},
		types = { "bold" },
		operators = {},
	},

	custom_highlights = function(colors)
		return {
		    -- NormalFloat = { fg = "", bg = colors.crust },
			-- FloatBorder = { bg = colors.crust, fg = colors.crust },
			VertSplit = { bg = colors.base, fg = colors.surface0 },
			-- CursorLineNr = { fg = colors.mauve, style = { "bold" } },
			-- PmenuSel = { bg = colors.surface0, fg = "" },

            --[[
			TelescopeSelection = { bg = colors.surface0 },
			TelescopePromptCounter = { fg = colors.mauve, style = { "bold" } },

			TelescopePromptPrefix = { bg = colors.surface0 },
			TelescopePromptNormal = { bg = colors.surface0 },
			TelescopeResultsNormal = { bg = colors.mantle },
			TelescopePreviewNormal = { bg = colors.crust },

			TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
			TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
			TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },

			TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
			TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
			TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
            ]]

			IndentBlanklineChar = { fg = colors.surface0 },
			IndentBlanklineContextChar = { fg = colors.surface2 },

			GitSignsChange = { fg = colors.peach },

            --[[
			NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
			NvimTreeExecFile = { fg = colors.text },
            NvimTreeWinSeparator = { fg = colors.crust, bg = colors.mantle }
            ]]
		}
		end,
})
