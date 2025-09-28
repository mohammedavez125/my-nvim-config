return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_by_name = {
					-- '.git',
					-- '.DS_Store',
					-- 'thumbs.db',
				},
				never_show = {},
			},
		},
	},
	lazy = false, -- neo-tree will lazily load itself
	config = function(_, opts)
		require("neo-tree").setup(opts)
		vim.keymap.set("n", "<C-n>", ":Neotree toggle left<CR>", {desc="neo tree"})
	end,
}
