vim.cmd("setlocal ts=2 sw=2")

require("lvim.lsp.manager").setup("dartls", {
    settings = {
        dart = { lineLength = 120 }
    }
})
