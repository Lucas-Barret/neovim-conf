return {
	{

		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			local telescope = require("telescope")

      local builtin = require("telescope.builtin")

			telescope.setup({
				defaults = {
					path_display = {"smart"},
				},
			})

      telescope.load_extension("fzf")

      vim.keymap.set("n", "<leader><leader>", builtin.live_grep, {})
      vim.keymap.set("n", "<D-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
