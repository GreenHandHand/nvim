-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- insert mode use ctrl+c and ctrl+v for copy&paste
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true })
vim.keymap.set("i", "<C-v>", "<C-r>+", { noremap = true })

-- auto indent when switch insert mode in blank line
vim.keymap.set("n", "A", function()
    return string.match(vim.api.nvim_get_current_line(), "[^%s]") == nil and "cc" or "A"
end, { expr = true, noremap = true })

-- switch move mode in terminal
vim.keymap.set("t", "<C-\\>", "<C-\\><C-n>", { noremap = true })

if vim.g.neovide then
    vim.g.neovide_scale_factor = 1.0
    local change_scale_factor = function(delta)
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end
    vim.keymap.set("n", "<C-=>", function()
        change_scale_factor(1.25)
    end)
    vim.keymap.set("n", "<C-->", function()
        change_scale_factor(1 / 1.25)
    end)
end
