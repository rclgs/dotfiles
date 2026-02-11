-- lua/settings.lua

-- General settings
vim.opt.number = true                -- Show line numbers
vim.opt.relativenumber = true        -- Relative line numbers

-- Indentation settings
vim.opt.expandtab = true             -- Use spaces instead of tabs
vim.opt.shiftwidth = 4               -- Number of spaces for indentation
vim.opt.tabstop = 4                  -- Number of spaces a tab counts for
vim.opt.smartindent = true           -- Smart indentation

-- Search settings
vim.opt.hlsearch = true              -- Highlight search results
vim.opt.incsearch = true             -- Incremental search

-- Display settings
vim.opt.wrap = true                  -- Enable line wrapping
vim.opt.linebreak = true             -- Break lines at word boundaries
vim.opt.textwidth = 80               -- Set text width to 80 columns
vim.opt.termguicolors = true         -- Enable true colors

-- Folding settings
vim.opt.foldmethod = 'syntax'        -- Set fold method to syntax
vim.opt.foldlevel = 99               -- Open all folds by default

