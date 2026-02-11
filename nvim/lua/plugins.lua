-- Bootstrap 'lazy.nvim'; the package manager
local path_package = vim.fn.stdpath('data') .. '/site/'
local lazy_path = path_package .. 'pack/deps/start/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazy_path) then
  vim.cmd('echo "Cloning `lazy.nvim`" | redraw')
  local clone_cmd = { 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', lazy_path }
  vim.fn.system(clone_cmd)
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
  vim.cmd('packadd lazy.nvim | helptags ALL')
  vim.cmd('echo "Installed `lazy.nvim`" | redraw')
end

-- Setup 'lazy.nvim'
require('lazy').setup({
  path = { package = path_package },
  spec = {
    { import = 'plugins' },
  }
})
