vim.cmd("echo \"Oi from plugins!\"")

return require('packer').startup {
	function(use)
		use 'wbthomason/packer.nvim'
		use {
			'https://github.com/nvim-lua/plenary.nvim.git',
			as = 'nvim-lua/planary.nvim'
		}
		use { 
			'https://github.com/nvim-telescope/telescope.nvim.git',
			as = 'nvim-telescop/telescope.nvim', tag = '0.1.0',
		}
	end
}
