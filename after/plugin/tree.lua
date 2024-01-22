-- disable netrw at the very start of your init.lua
local api = require "nvim-tree.api"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set('n', '<leader>tt', api.tree.toggle, {})
-- OR setup with some options
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
    }
})
