--
-- Name:        harpoon.lua
-- Description: Neovim harpoon plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.keymap.set("n", "<C-a>", require("harpoon.mark").add_file)
vim.keymap.set("n", "<C-e>", require("harpoon.ui").toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() require("harpoon.ui").nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() require("harpoon.ui").nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() require("harpoon.ui").nav_file(4) end)

