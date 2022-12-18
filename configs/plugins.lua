vim.cmd("echo \"Oi from plugins!\"")

return require('packer').startup {
	function(use)
		use 'wbthomason/packer.nvim'
	end
}
