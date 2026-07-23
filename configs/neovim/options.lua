--
-- Name:        options.lua
-- Description: Neovim options settings.
-- Author:      Daniel Ribeirinha-Braga
--

HOME = ""

if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
  HOME = tostring(os.getenv("HOME"))
  print("Windows")
else
  HOME = tostring(os.getenv("HOMEPATH"))
  print("Unix")
end

vim.opt.ts = 2
vim.opt.sts = 2
vim.opt.shiftwidth = 2
vim.opt.et = true
vim.opt.si = true
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = HOME .. "/.vim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.so = 8

vim.opt.updatetime = 50

vim.opt.spell = true
vim.opt.spelllang = 'en_us'

