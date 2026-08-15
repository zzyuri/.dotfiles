return {

    vim.keymap.set({ "n", "v" }, "<leader>ft", function()
        require("conform").format({
            async = true,
            lsp_fallback = true,
        })
    end, { desc = "Format buffer or range" }),

    require("conform").setup({
        formatters_by_ft = {
            blade = {"blade-formatter"},
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            python = { "isort", "black" },
            -- You can customize some of the format options for the filetype (:help conform.format)
            rust = { "rustfmt", lsp_format = "fallback" },
            -- Conform will run the first available formatter
            javascript = { "prettierd", "prettier", stop_after_first = true },
        },
    })
}
