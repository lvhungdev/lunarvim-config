vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

lvim.colorscheme = "vscode"

lvim.builtin.breadcrumbs = { active = false }

lvim.builtin.bufferline.options = {
    always_show_bufferline = true,
    max_name_length = 30,
    offsets = {
        {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center"
        }
    },
}

lvim.builtin.nvimtree.setup = {
    filters = {
        dotfiles = false,
    },
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = true,
    hijack_unnamed_buffer_when_opening = false,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    view = {
        adaptive_size = false,
        side = "right",
        width = 40,
        hide_root_folder = false,
    },
    git = {
        enable = true,
        timeout = 5000,
        -- ignore = true,
    },
    filesystem_watchers = {
        enable = true,
    },
    actions = {
        open_file = {
            resize_window = true,
        },
    },
    diagnostics = {
        enable = true
    },
    renderer = {
        highlight_git = true,
        highlight_opened_files = "none",
        indent_markers = {
            enable = false,
        },
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = false,
            },
        },
    },
}
