vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jsonls", "yamlls" })

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
    { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
})

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
    {
        command = "prettier",
        filetypes = { "typescript", "typescriptreact" },
    },
})
