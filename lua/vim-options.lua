-- Leader key
vim.g.mapleader = " "

-- Indentation (2 spaces everywhere)
vim.cmd("set expandtab")      -- Use spaces instead of tabs
vim.cmd("set tabstop=2")      -- A tab is 2 spaces
vim.cmd("set softtabstop=2")  -- Tab key inserts 2 spaces
vim.cmd("set shiftwidth=2")   -- Indent with 2 spaces
vim.cmd("set autoindent")     -- Continue indenting on new lines
vim.cmd("set smarttab")       -- Smarter tab behavior
vim.cmd("set shiftround")     -- Round indent to multiple of shiftwidth

-- UI
vim.cmd("set relativenumber") -- Relative line numbers
vim.cmd("set number")         -- Absolute line number on the current line
vim.cmd("set cursorline")     -- Highlight current line
vim.cmd("set title")          -- Show file name in terminal title
vim.cmd("set mouse=a")        -- Enable mouse
vim.cmd("set laststatus=2")   -- Always show statusline
vim.cmd("set wildmenu")       -- Better command-line completion

-- Search
vim.cmd("set hlsearch")       -- Highlight search matches
vim.cmd("set incsearch")      -- Incremental search
vim.cmd("set ignorecase")     -- Ignore case by default
vim.cmd("set smartcase")      -- Case-sensitive if uppercase in search

-- Text rendering
vim.cmd("set encoding=utf-8")
vim.cmd("set scrolloff=3")    -- Keep context above/below cursor
vim.cmd("set sidescrolloff=5")
vim.cmd("syntax enable")

-- Quality of life
vim.cmd("set hidden")         -- Allow multiple unsaved buffers
vim.cmd("set autoread")       -- Reload file if changed outside vim
vim.cmd("set confirm")        -- Confirm before closing unsaved
vim.cmd("set history=1000")   -- Large undo history

