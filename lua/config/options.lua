-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.tabstop = 4
opt.shiftwidth = 4

opt.spelllang = { "en_us", "cjk" }
opt.spelloptions = "camel"

-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "basedpyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"

if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    -- vim.o.guifont = "JetBrainsMono Nerd Font,LXGW WenKai Mono:h12"
    vim.o.guifont = "Maple Mono Normal NF,LXGW WenKai Mono:h12"
    vim.g.neovide_opacity = 1
    vim.g.neovide_normal_opacity = 1
    vim.g.neovide_show_border = true
    vim.g.neovide_title_background_color = "transparent"
end
