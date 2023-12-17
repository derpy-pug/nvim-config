local builtin = require('telescope.builtin')

local function find_dotfiles()
    builtin.find_files({
        prompt_title = "< Neovim Config >",
        cwd = "~/.config/nvim/",
    })
end

local actions = require('telescope.actions')
require('telescope').setup({
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
        },
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        file_ignore_patterns = { "node_modules", ".git" },
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        generic_sorter = require('telescope.sorters').get_fzy_sorter,
        border = true,
        layout_config = {
            horizontal = {
                width = 0.8,
                prompt_position = 'bottom',
                preview_width = 0.6,
            },
            vertical = {
                height = 0.8,
                width = 0.6,
                preview_height = 0.5,
            },
        },
    },
    pickers = {
        buffers = {
            sort_lastused = true,
            mappings = {
                i = {
                    ["<c-d>"] = require("telescope.actions").delete_buffer,
                },
                n = {
                    ["<c-d>"] = require("telescope.actions").delete_buffer,
                }
            }
        },
        find_files = {
        },
        lsp_document_symbols = {
            layout_config = {
                width = 0.8,
                height = 0.8,
                prompt_position = 'bottom',
                preview_width = 0.6,
            },
        },

    },
    extensions = {
    }
})
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pd', find_dotfiles, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- search document functions/methods/
vim.keymap.set('n', '<leader>pw', function()
    builtin.lsp_document_symbols({ symbols = { "Function", "Method" } })
end)
