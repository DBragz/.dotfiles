--
-- Name:        undotree.lua
-- Description: Neovim undotree plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
  local git_path = vim.fn.exepath('git')
  if git_path ~= '' then
    local git_root = vim.fn.fnamemodify(git_path, ':h:h')
    local diff_path = git_root .. '/usr/bin/diff.exe'

    if vim.fn.filereadable(diff_path) == 1 then
      vim.g.undotree_DiffCommand = diff_path
    end
  end
end

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })
