vim.opt.guicursor = "i:block"

vim.g.mapleader = " "

-- Enable system clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.listchars = {
    eol = "¬",
    tab = ">·",
    trail = "~",
    extends = ">",
    precedes = "<",
    space = "·",
}

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

-- fold settings
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
