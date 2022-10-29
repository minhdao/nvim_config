-- automatically install and set up packer.nvim
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand to reloads nvim whenever this file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Import packer with protective call
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- Starup packer and use packer to install plugins
return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  use("bluz71/vim-nightfly-guicolors") -- colorscheme
  use("christoomey/vim-tmux-navigator") -- tmux terminal windows and panes

  if packer_bootstrap then
    require("packer").sync()
  end
end)
