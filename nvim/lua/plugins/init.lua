return require('packer').startup(function()
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- an implementation of the popup api from vim in neovim
  use 'nvim-lua/popup.nvim' 

  -- useful lua functions used ny lots of plugins
  use 'nvim-lua/plenary.nvim' 

  -- nord colorscheme
  use 'shaunsingh/nord.nvim'
  -- use 'arcticicestudio/nord-vim'

  -- rose pine colorscheme
  -- use {'rose-pine/neovim', config = "vim.cmd('colorscheme rose-pine')"}

  -- treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- webdev icons
  use 'kyazdani42/nvim-web-devicons'

  -- lualine
  use 'nvim-lualine/lualine.nvim'

  -- bufferline
  use 'akinsho/bufferline.nvim'

  -- nvim tree
  use 'kyazdani42/nvim-tree.lua'

  -- treesitter autotag
  use 'windwp/nvim-ts-autotag'

  -- treesitter rainbow
  use 'p00f/nvim-ts-rainbow'

  -- nvim autopairs
  use 'windwp/nvim-autopairs'

  -- whichkey
  use 'folke/which-key.nvim'

  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  
end)
