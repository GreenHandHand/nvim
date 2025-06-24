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

if vim.g.vscode then
    local actions = require("config.vscode")

    vim.keymap.set({ "n", "v" }, "<C-d>", "10j")
    vim.keymap.set({ "n", "v" }, "<C-u>", "10k")

    -- whichkey
    vim.keymap.set({ "n", "v" }, "<leader>", actions.whichkey.show)

    -- terminal
    vim.keymap.set({ "n", "v" }, "<C-/>", actions.toggle.terminal)

    -- split
    vim.keymap.set("n", "<leader>-", actions.split.splitEditorDown)
    vim.keymap.set("n", "<leader>|", actions.split.splitEditorRight)

    -- buffer
    vim.keymap.set({ "n", "v" }, "H", actions.workbench.previousEditor)
    vim.keymap.set({ "n", "v" }, "L", actions.workbench.nextEditor)
    vim.keymap.set("n", "<leader>bd", actions.workbench.deleteBuffer)
    vim.keymap.set("n", "<leader>bo", actions.workbench.deleteOtherBuffers)
    vim.keymap.set("n", "<leader>bD", actions.workbench.deleteBufferAndWindow)

    -- code
    vim.keymap.set("n", "<leader>ca", actions.code.codeAction)
    vim.keymap.set("n", "<leader>cl", actions.code.lspInfo)
    vim.keymap.set("n", "<leader>cr", actions.code.rename)
    vim.keymap.set("n", "<leader>cR", actions.code.renameFile)
    vim.keymap.set("n", "<leader>cf", actions.code.format)
    vim.keymap.set("v", "<leader>cf", actions.code.formatSelected)
    vim.keymap.set("n", "<leader>cs", actions.code.symbolsOutline)

    -- find
    vim.keymap.set("n", "<leader>fb", actions.file.buffer)
    vim.keymap.set("n", "<leader>fs", actions.file.saveFile)
    vim.keymap.set("n", "<leader>fS", actions.file.saveAllFiles)
    vim.keymap.set("n", "<leader>fr", actions.file.recentFiles)
    vim.keymap.set("n", "<leader>fy", actions.file.copyPath)
    vim.keymap.set("n", "<leader>e", actions.file.explorer)

    -- git
    vim.keymap.set("n", "<leader>gn", actions.gitGoto.nextChange, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>gN", actions.gitGoto.showNextChange, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>gp", actions.gitGoto.previousChange, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>gP", actions.gitGoto.showPreviousChange, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>gr", actions.gitGoto.revertChange, { noremap = true, silent = true })

    -- toggle
    vim.keymap.set("n", "<leader>ta", actions.toggle.activityBar)
    vim.keymap.set("n", "<leader>tz", actions.toggle.zenMode)
    vim.keymap.set("n", "<leader>ts", actions.toggle.sidebar)
    vim.keymap.set("n", "<leader>tC", actions.toggle.theme)
    vim.keymap.set("n", "<leader>tb", actions.toggle.breadcrumbs)
    vim.keymap.set("n", "<leader>tt", actions.toggle.terminal)
    vim.keymap.set("n", "<leader>tp", actions.toggle.panel)
    vim.keymap.set("n", "<leader>tf", actions.toggle.fullScreen)
    vim.keymap.set("n", "<leader>tm", actions.toggle.maximizedPanel)
    vim.keymap.set("n", "<leader>tT", actions.toggle.tabsVisibility)
    vim.keymap.set("n", "<leader>tB", actions.toggle.toolBar)

    -- search
    vim.keymap.set("n", "<leader>sr", actions.search.reference)
    vim.keymap.set("v", "<leader>ss", actions.search.selected)
    vim.keymap.set("n", "<leader>sR", actions.search.referenceInSideBar)
    vim.keymap.set("n", "<leader>st", actions.search.text)
    vim.keymap.set("n", "<leader>sf", actions.search.file)

    --folding
    vim.keymap.set("n", "zr", actions.fold.openAll)
    vim.keymap.set("n", "zm", actions.fold.all)
    vim.keymap.set("n", "za", actions.fold.toggle)
end
