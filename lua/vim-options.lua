vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.cursorline =  true
opt.clipboard:append("unnamedplus")
vim.g.mapleader = " "
