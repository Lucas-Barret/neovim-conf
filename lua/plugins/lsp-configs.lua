return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ruby_lsp",
					"tsserver",
					"rubocop",
					"pyright",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.ruby_lsp.setup({})
			lspconfig.rubocop.setup({
				cmd = { "bundle", "exec", "rubocop", "--lsp" },
			})
			lspconfig.tsserver.setup({
				filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
				cmd = { "typescript-language-server", "--stdio" },
			})

      local util = require('lspconfig/util')
      local path = util.path
			lspconfig.pyright.setup({
				filetypes = { "python" },
				before_init = function(_, config)
					local default_venv_path = path.join(vim.env.HOME, "nvim-venv", "bin", "python")
					config.settings.python.pythonPath = default_venv_path
				end,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
