local dap = require("dap")

dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = "/home/lvhu/.local/share/nvim/mason/packages/codelldb/codelldb",
        args = { "--port", "${port}" },
        -- On windows you may have to uncomment this:
        -- detached = false,
    }
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            ---@diagnostic disable-next-line: redundant-parameter
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/build/", "file")
        end,
        cwd = "${workspaceFolder}/build/",
        stopOnEntry = false,
    },
}
