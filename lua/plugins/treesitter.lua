return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				ensure_installed = { "lua", "javascript", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup({
				enable = true, -- enable this plugin
				max_lines = 5, -- how many lines of context to show
				min_window_height = 0, -- no limit
				line_numbers = true, -- show line numbers in context window
				multiline_threshold = 20, -- max number of lines for a single context
				trim_scope = "outer", -- which context lines to discard if too long
				mode = "cursor", -- 'cursor' or 'topline'
				separator = nil, -- can be "─", "▁", etc.
				zindex = 20, -- floating window priority
			})
		end,
	},
}
