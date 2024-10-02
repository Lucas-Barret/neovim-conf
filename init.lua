
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local opts = {}

require("vim-options")
require("lazy").setup("plugins")
require("telescope").load_extension("noice")

vim.keymap.set('n','<C-n>', ':Neotree filesystem reveal left<CR>',{})
vim.keymap.set('n','<leader>hw', ':HopWord<CR>',{})

vim.keymap.set('n','<leader>+','<C-a>',{})
vim.keymap.set('n','<leader>-','<C-x>',{})

vim.keymap.set('n','<leader>sv','<C-w>v',{ desc = 'Splitting vertically' })
vim.keymap.set('n','<leader>sh','<C-w>s',{ desc = 'Splitting horiztontally' })
