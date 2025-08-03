vim.g.lazyvim_check_order = false

return {
	{
		-- Themes
		require("plugins.themes.synthwave84"),
		require("plugins.themes.alpha"),
	},
	{
		-- Lsp
		require("plugins.lsp.general"),
	},
	{
		require("plugins.db-related.dadbod"),
	},
	{
		require("plugins.general.telescope"),
		require("plugins.general.treesitter"),
	},
	{
		require("plugins.debugging.rustaceanvim"),
	},
	{
		-- The only thing that I hate about lazy
		require("plugins.disable"),
	},

	--General Configs
	{
		-- change trouble config
		{
			"folke/trouble.nvim",
			-- opts will be merged with the parent spec
			opts = { use_diagnostic_signs = true },
		},

		-- disable trouble
		{ "folke/trouble.nvim", enabled = false },

		-- override nvim-cmp and add cmp-emoji
		{
			"hrsh7th/nvim-cmp",
			dependencies = { "hrsh7th/cmp-emoji" },
			---@param opts cmp.ConfigSchema
			opts = function(_, opts)
				table.insert(opts.sources, { name = "emoji" })
			end,
		},
		-- the opts function can also be used to change the default opts:
		{
			"nvim-lualine/lualine.nvim",
			event = "VeryLazy",
			opts = function(_, opts)
				table.insert(opts.sections.lualine_x, "😄")
			end,
		},

		-- or you can return new options to override all the defaults
		{
			"nvim-lualine/lualine.nvim",
			event = "VeryLazy",
			opts = function()
				return {
					--[[add your custom lualine config here]]
				}
			end,
		},
	},
}
