return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>d",
				-- not adding nothing for ignoring the key
				function() end,
				desc = "which_key_ignore",
			},
		},
	},
}
