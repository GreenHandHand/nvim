local vscode = require("vscode")

-- stylua: ignore
local actions = {
    whichkey = { show = function() vscode.action("whichkey.show") end, },
    comment = { selected = function() vscode.action("editor.action.commentLine") end, },
    problem = {
        list = function() vscode.action("workbench.actions.view.problems") end,
        next = function() vscode.action("editor.action.marker.next") end,
        previous = function() vscode.action("editor.action.marker.prev") end,
        quickFix = function() vscode.action("editor.action.quickFix") end,
    },
    file = {
        buffer = function() vscode.action("workbench.action.showAllEditors") end,
        saveFile = function() vscode.action("workbench.action.files.save") end,
        saveAllFiles = function() vscode.action("workbench.action.files.saveAll") end,
        copyPath = function() vscode.action("workbench.action.files.copyPathOfActiveFile") end,
        recentFiles = function() vscode.action("workbench.action.openRecent") end,
        explorer = function() vscode.action("workbench.files.action.showActiveFileInExplorer") end,
    },
    split = {
        splitEditorDown = function() vscode.action("workbench.action.splitEditorDown") end,
        splitEditorRight = function() vscode.action("workbench.action.splitEditorRight") end,
    },
    workbench = {
        showCommands = function() vscode.action("workbench.action.showCommands") end,
        previousEditor = function() vscode.action("workbench.action.previousEditor") end,
        nextEditor = function() vscode.action("workbench.action.nextEditor") end,
        deleteBuffer = function() vscode.action("workbench.action.closeActiveEditor") end,
        deleteOtherBuffers = function() vscode.action("workbench.action.closeOtherEditors") end,
        deleteBufferAndWindow = function()
            vscode.action("workbench.action.closeActiveEditor")
            vscode.action("workbench.action.closeWindow")
        end,
    },
    code = {
        codeAction = function() vscode.action("editor.action.quickFix") end,
        lspInfo = function() vscode.action("workbench.action.togglePanel") end,
        rename = function() vscode.action("editor.action.rename") end,
        renameFile = function()
            vscode.action("workbench.files.action.showActiveFileInExplorer")
            vscode.action("renameFile")
        end,
        format = function() vscode.action("editor.action.formatDocument") end,
        formatSelected = function() vscode.action("editor.action.formatSelection") end,
        symbolsOutline = function() vscode.action("outline.focus") end,
    },
    toggle = {
        activityBar = function() vscode.action("workbench.action.toggleActivityBarVisibility") end,
        sidebar = function() vscode.action("workbench.action.toggleSidebarVisibility") end,
        zenMode = function() vscode.action("workbench.action.toggleZenMode") end,
        theme = function() vscode.action("workbench.action.selectTheme") end,
        breadcrumbs = function() vscode.action("breadcrumbs.toggle") end,
        terminal = function() vscode.action("workbench.action.terminal.toggleTerminal") end,
        sideBar = function() vscode.action("workbench.action.toggleSidebarVisibility") end,
        panel = function() vscode.action("workbench.action.togglePanel") end,
        fullScreen = function() vscode.action("workbench.action.toggleFullScreen") end,
        maximizedPanel = function() vscode.action("workbench.action.toggleMaximizedPanel") end,
        tabsVisibility = function() vscode.action("workbench.action.toggleWindowTabsBar") end,
        toolBar = function() vscode.action("workbench.action.toggleToolbarVisibility") end,
    },
    search = {
        reference = function() vscode.action("editor.action.referenceSearch.trigger") end,
        symbols = function() vscode.action("workbench.action.gotoSymbol") end,
        referenceInSideBar = function() vscode.action("references-view.find") end,
        selected = function()
            vscode.action("editor.action.addSelectionToNextFindMatch")
            vscode.action("workbench.action.findInFiles")
        end,
        text = function() vscode.action("workbench.action.findInFiles") end,
        file = function() vscode.action("workbench.action.quickOpen") end,
    },
    gitGoto = {
        nextChange = function() vscode.action("workbench.action.editor.nextChange") end,
        showNextChange = function() vscode.action("editor.action.dirtydiff.next") end,
        previousChange = function() vscode.action("workbench.action.editor.previousChange") end,
        showPreviousChange = function() vscode.action("editor.action.dirtydiff.previous") end,
        revertChange = function() vscode.action("git.revertSelectedRanges") end,
    },
    fold = {
        toggle = function() vscode.action("editor.toggleFold") end,
        all = function() vscode.action("editor.foldAll") end,
        openAll = function() vscode.action("editor.unfoldAll") end,
        close = function() vscode.action("editor.fold") end,
        open = function() vscode.action("editor.unfold") end,
        openRecursive = function() vscode.action("editor.unfoldRecursively") end,
        blockComment = function() vscode.action("editor.foldAllBlockComments") end,
        allMarkerRegion = function() vscode.action("editor.foldAllMarkerRegions") end,
        openAllMarkerRegion = function() vscode.action("editor.unfoldAllMarkerRegions") end,
        gotoParentFold = function() vscode.action("editor.gotoParentFold") end,
    },
    refactor = {
        showMenu = function() vscode.action("editor.action.refactor") end,
        rename = function() vscode.action("editor.action.rename") end,
        html = {
            wrap = function() vscode.action("editor.emmet.action.wrapWithAbbreviation") end,
            delete = function() vscode.action("editor.emmet.action.removeTag") end,
            update = function() vscode.action("editor.emmet.action.updateTag") end,
        },
        organizeImport = function() vscode.action("editor.action.organizeImports") end,
    },
}

return actions
