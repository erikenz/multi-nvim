-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.vscode then
  print("Loaded VSCode settings")
  require("vscode")
elseif vim.g.started_by_firenvim == true then
  print("Loaded Firenvim settings")
  vim.o.laststatus = 0
else
  print("Loaded default settings")
  vim.o.laststatus = 2
end
