-- init.lua
require('settings')  -- Load general settings first
require('keymaps')   -- Load key mappings next, as they may depend on settings
require('plugins')   -- Load plugins after settings and keymaps
require('lsp')       -- Load LSP configuration last, as it may depend on both settings and plugins

