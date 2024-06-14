return {
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration
		},
		config = function()
			require("neogit").setup()
			vim.keymap.set("n", "<leader>df", ":DiffviewOpen<CR>", {})
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
			vim.keymap.set("n", "<leader>gp", ":GitSigns preview_hunk<CR>", {})
		end,
	},
	{
		"pwntester/octo.nvim",

		config = function()
			require("octo").setup({
				enable_builtins = true,
				suppress_missing_scope = {
					projects_v2 = true,
				},
			})
			vim.keymap.set("n", "<leader>O", "<cmd>Octo<CR>", {})
		end,
	},
}
