local lsps_with_file_types = {
	nil_ls = { "nix" },
	nixd = { "nix" },
	clangd = { "c", "cpp", "cc" },
	pyright = { "py" },
	zls = { "zig" },
}

local function format_lsp(lsp_name, file_types)
	return {

		{
			"neovim/nvim-lspconfig",
			name = "lspconfig." .. lsp_name,
			ft = file_types,
			opts = {},
			config = function(_, opts)
				require("lspconfig").lsp_name.setup(opts)
			end,
		},

		vim.lsp.enable(lsp_name),
	}
end

local function inyect_lsps_args_into_formatter()
	local formatted_lsps = {}

	for lsp, file_types in pairs(lsps_with_file_types) do
		table.insert(formatted_lsps, format_lsp(lsp, file_types)) -- I can't really handle this indexing
	end

	return formatted_lsps
end

return {

	vim.lsp.enable("lua_ls"),

	inyect_lsps_args_into_formatter(),

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
