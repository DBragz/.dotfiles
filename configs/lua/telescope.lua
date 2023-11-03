--
-- Name:        telescope.lua
-- Description: Neovim telescope plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.keymap.set("n", "<leader>th", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>tf", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>tg", ":Telescope git_files<CR>")
vim.keymap.set("n", "<leader>td", ":Telescope diagnostics<CR>")
vim.keymap.set("n", "<leader>tl", ":Telescope lsp_references<CR>")

HOME = ""

if os.getenv("HOME") ~= nil
  then
    HOME = tostring(os.getenv("HOME"))
    vim.keymap.set('n', '<leader>tgr', ":Telescope grep_string<CR>")
  else
    HOME = tostring(os.getenv("HOMEPATH"))
    print("No grep_string :(")
  end

