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

	-- this will just work for pyright with nix-shell, cause I ain't installing pyright, nor the interpreter

	{
		"neovim/nvim-lspconfig",
		name = "lspconfig.pyright",
		ft = { "py" },
		config = function(_, opts)
			require("lspconfig").pyright.setup(opts)
		end,
	},

	vim.lsp.enable("pyright"),

	{
		"neovim/nvim-lspconfig",
		name = "lspconfig.zls",
		ft = { "zig" },
		config = function(_, opts)
			require("lspconfig").zls.setup(opts)
		end,
	},

	vim.lsp.enable("zls"),
}
