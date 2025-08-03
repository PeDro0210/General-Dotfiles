return {

	vim.lsp.enable("lua_ls"),
	{
		"neovim/nvim-lspconfig",
		name = "lspconfig.nil_ls",
		ft = { "nix" },
		opts = {},
		config = function(_, opts)
			require("lspconfig").nil_ls.setup(opts)
		end,
	},
	vim.lsp.enable("nil_ls"),
	{
		"neovim/nvim-lspconfig",
		name = "lspconfig.nixd",
		ft = { "nix" },
		opts = {},
		config = function(_, opts)
			require("lspconfig").nixd.setup(opts)
		end,
	},
	vim.lsp.enable("nixd"),
	{
		"stevearc/conform.nvim",
		optional = true,
		opts = {
			formatters_by_ft = {
				nix = { "nixfmt" },
			},
		},
	},
}
