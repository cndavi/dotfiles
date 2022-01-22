return require('packer').startup(function()
  -- packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/popup.nvim' 
  use 'nvim-lua/plenary.nvim'

  -- web dev icons
  use 'kyazdani42/nvim-web-devicons'

  -- colorscheme
  use 'shaunsingh/nord.nvim'

  -- treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- lualine
  use 'nvim-lualine/lualine.nvim'

  -- bufferline
  use 'akinsho/bufferline.nvim'

  -- nvrim tree
  use 'kyazdani42/nvim-tree.lua'

  -- auto tag
  use 'windwp/nvim-ts-autotag'

  -- rainbow tags
  use 'p00f/nvim-ts-rainbow'

  -- auto pairs
  use 'windwp/nvim-autopairs'

  -- whichkey
  use 'folke/which-key.nvim'
end)
