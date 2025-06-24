return {
    "Civitasv/cmake-tools.nvim",
    lazy = true,
    init = function()
        local loaded = false
        local function check()
            local cwd = vim.uv.cwd()
            if vim.fn.filereadable(cwd .. "/CMakeLists.txt") == 1 then
                require("lazy").load({ plugins = { "cmake-tools.nvim" } })
                loaded = true
            end
        end
        check()
        vim.api.nvim_create_autocmd("DirChanged", {
            callback = function()
                if not loaded then
                    check()
                end
            end,
        })
    end,
    opts = {
        -- this is used to specify generate directory for cmake,
        -- allows macro expansion, can be a string or a function
        -- returning the string, relative to cwd.
        cmake_build_directory = function()
            if require("cmake-tools.osys").iswin32 then
                return "build\\${variant:buildType}"
            end
            return "build/${variant:buildType}"
        end,
    },
}
