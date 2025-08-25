vim.g.lazyvim_check_order = false

return {
	{
		-- Themes
		require("plugins.themes.synthwave84"),
		require("plugins.themes.alpha"),
		require("plugins.themes.image"),
	},
	{
		-- Lsp
		require("plugins.lsp.general"),
	},
	{
		require("plugins.db-related.dadbod"),
	},
	{
		require("plugins.general.img_support"),
		require("plugins.general.treesitter"),
	},
	{
		require("plugins.debugging.rustaceanvim"),
		require("plugins.debugging.trouble"),
	},
	{
		-- The only thing that I hate about lazy
		require("plugins.disable"),
	},
	{
		require("plugins.which_key.general"),
	},

	--General Configs
	{

		-- override nvim-cmp and add cmp-emoji
		{
			"hrsh7th/nvim-cmp",
			dependencies = { "hrsh7th/cmp-emoji" },
			---@param opts cmp.ConfigSchema
			opts = function(_, opts)
				table.insert(opts.sources, { name = "emoji" })
			end,
		},
	},
}
