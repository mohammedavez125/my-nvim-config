return {
  {
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls" },
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Lua LS
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          }
        }
      })
      vim.lsp.enable("lua_ls")

      -- TypeScript LS
      vim.lsp.config("ts_ls", {})
      vim.lsp.enable("ts_ls")
      -- json lsp
      vim.lsp.config("json_lsp", {})
      vim.lsp.enable("json_lsp")
      -- Rust Analyzer
      vim.lsp.config("rust_analyzer", {})
      vim.lsp.enable("rust_analyzer")

      -- Keymaps (shared across servers)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<Leader>ca", vim.lsp.buf.code_action, {desc = "code action"})
    end
  }
}

