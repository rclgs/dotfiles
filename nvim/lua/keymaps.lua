-- lua/keymaps.lua

-- Define a local variable for the mapping function
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Basic key mappings
map('n', '<Space>', '', opts)  -- Disable space as a default mapping

-- Save and quit
map('n', '<Leader>w', ':w<CR>', opts)  -- Save file
map('n', '<Leader>q', ':q<CR>', opts)  -- Quit

-- Toggle file explorer
map('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)  -- Toggle file explorer

-- Navigation
map('n', '<C-j>', 'j', opts)  -- Move down
map('n', '<C-k>', 'k', opts)  -- Move up
map('n', '<C-h>', 'h', opts)  -- Move left
map('n', '<C-l>', 'l', opts)  -- Move right

-- Split windows
map('n', '<Leader>sv', ':vsplit<CR>', opts)  -- Vertical split
map('n', '<Leader>sh', ':split<CR>', opts)   -- Horizontal split
map('n', '<Leader>sc', '<C-w>c', opts)        -- Close current split

-- Resize splits
map('n', '<C-Up>', ':resize +2<CR>', opts)    -- Increase height
map('n', '<C-Down>', ':resize -2<CR>', opts)  -- Decrease height
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)  -- Decrease width
map('n', '<C-Right>', ':vertical resize +2<CR>', opts) -- Increase width

-- Search and replace
map('n', '<Leader>sr', ':%s//g<Left><Left><Left>', opts)  -- Search and replace
