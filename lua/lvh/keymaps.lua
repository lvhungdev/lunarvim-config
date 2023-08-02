-- Copy and paste
lvim.keys.normal_mode["c"] = "\"_c"
lvim.keys.normal_mode["C"] = "\"_C"
lvim.keys.normal_mode["d"] = "\"_d"
lvim.keys.normal_mode["D"] = "\"_D"
lvim.keys.normal_mode["dd"] = "\"_dd"
lvim.keys.visual_mode["d"] = "\"_d"
lvim.keys.visual_mode["p"] = "\"_dP"

-- Utils
lvim.lsp.buffer_mappings.normal_mode["<esc>"] = nil
lvim.keys.normal_mode["<ecs>"] = ":noh<CR>"

-- Navigations
lvim.builtin.which_key.mappings["c"] = {}
lvim.builtin.which_key.mappings["q"] = { ":BufferKill<CR>", "Close Buffer" }
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- Fuzzy finder
lvim.builtin.telescope.defaults.mappings = { i = { ["<esc>"] = require("telescope.actions").close } }
lvim.builtin.which_key.mappings["f"] = { ":Telescope find_files<CR>", "Find files" }
lvim.builtin.which_key.mappings["w"] = { ":Telescope live_grep<CR>", "Find words" }

-- LSP
lvim.lsp.buffer_mappings.normal_mode["gl"] = nil
lvim.lsp.buffer_mappings.normal_mode["gI"] = nil

lvim.lsp.buffer_mappings.normal_mode["<S-j>"] = { vim.diagnostic.open_float, "Show diagnostic" }
lvim.lsp.buffer_mappings.normal_mode["gd"] = { ":Telescope lsp_definitions<CR>", "Find definitions" }
lvim.lsp.buffer_mappings.normal_mode["gr"] = { ":Telescope lsp_references<CR>", "Find references" }
lvim.lsp.buffer_mappings.normal_mode["gi"] = { ":Telescope lsp_implementations<CR>", "Find implementations" }
lvim.builtin.which_key.mappings["a"] = { vim.lsp.buf.code_action, "Code actions" }
lvim.builtin.which_key.mappings["r"] = { vim.lsp.buf.rename, "Rename" }
