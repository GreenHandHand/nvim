return {
    {
        "folke/noice.nvim",
        opts = function(_, opts)
            opts.lsp.signature = {
                auto_open = false,
            }
            opts.presets = {
                lsp_doc_border = true,
                bottom_search = true,
                command_palette = true,
                long_message_to_split = true,
            }
            opts.override = {
                -- override the default lsp markdown formatter with Noice
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                -- override the lsp markdown formatter with Noice
                ["vim.lsp.util.stylize_markdown"] = true,
                -- override cmp documentation with Noice (needs the other options to work)
                ["cmp.entry.get_documentation"] = true,
            }
            return opts
        end,
    },
}
