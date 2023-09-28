local builtin = require('telescope.builtin')

local function find_dotfiles()
  builtin.find_files({
    prompt_title = "< Neovim Config >",
    cwd = "~/.config/nvim/",
  })
end

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pd', find_dotfiles, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
