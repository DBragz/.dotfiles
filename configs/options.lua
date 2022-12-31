HOME = ""

if os.getenv("HOME") ~= nil
  then
    HOME = os.getenv("HOME")
  else
    HOME = os.getenv("HOMEPATH")
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

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

