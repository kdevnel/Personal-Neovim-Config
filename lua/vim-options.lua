-- set some default basics for vim behaviour
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = ' '

-- line number display - hybrid style
vim.wo.number = true
vim.wo.relativenumber = true
