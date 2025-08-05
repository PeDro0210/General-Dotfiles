return {

	vim.lsp.enable("lua_ls"),

	-- all for nix related
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
	{
		"neovim/nvim-lspconfig",
		name = "lspconfig.clangd",
		ft = { "c", "cpp" },
		opts = {},
		config = function(_, opts)
			require("lspconfig").clangd.setup(opts)
		end,
	},
	vim.lsp.enable("clangd"),
}
