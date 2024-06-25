return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({

			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.tsserver,
				null_ls.builtins.diagnostics.tsserver,
				null_ls.builtins.diagnostics.black,
				null_ls.builtins.formatting.black,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>fmp", ":!black %<cr>", {})
		vim.keymap.set("n", "<leader>gn", vim.diagnostic.goto_next, {})
	end,
}
