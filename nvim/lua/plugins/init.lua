local fn = vim.fn

local install_path = fn.stdpath('data').. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- an implementation of the popup api from vim in neovim
  use 'nvim-lua/popup.nvim'

  -- useful lua functions used by lots of plugins
  use 'nvim-lua/plenary.nvim'

  -- webdev icons
  use 'kyazdani42/nvim-web-devicons'

  -- nord colorscheme
  use 'shaunsingh/nord.nvim'
  use 'rmehri01/onenord.nvim'

  -- rose pine colorscheme
  use 'rose-pine/neovim'
  
  -- nightfox colorscheme
  use {'EdenEast/nightfox.nvim'}

  -- lualine
  use {'nvim-lualine/lualine.nvim', config = "require('lualine-config')", event = "BufWinEnter"}

  -- bufferline
  use {'akinsho/bufferline.nvim', config = "require('bufferline-config')", event = "BufWinEnter"}

  -- nvim tree
  use {'kyazdani42/nvim-tree.lua', config = "require('nvim-tree-config')", cmd = "NvimTreeToggle"}

  -- treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = "require('treesitter-config')", event = "BufWinEnter"}

   -- treesitter autotag
  use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}

  -- treesitter rainbow
  use {'p00f/nvim-ts-rainbow', event = "BufWinEnter", after = "nvim-treesitter"}

  -- nvim autopairs
  use {'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp"}

  -- which key
  use {'folke/which-key.nvim', config = "require('whichkey-config')", event = "BufWinEnter"}

  -- telescope
  use {'nvim-telescope/telescope.nvim', config = "require('telescope-config')", cmd = "Telescope"}
  use {'nvim-telescope/telescope-file-browser.nvim'}

  -- cmp and lsp
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {'onsails/lspkind-nvim'}

  -- snippets
  use {'hrsh7th/cmp-vsnip', after = "nvim-cmp"}
  use {'hrsh7th/vim-vsnip', after = "nvim-cmp"}

  -- dashboard
  use {'glepnir/dashboard-nvim', config = "require('dashboard-config')", cmd = "Dashboard"}

  -- colorizer
  use {'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead"}

  -- blankline
  use {"lukas-reineke/indent-blankline.nvim", config = "require('blankline-config')", event = "BufRead"}

  -- format
  use {'lukas-reineke/format.nvim', config = "require('format-config')", cmd = "Format"}

  -- toggle term
  use {'akinsho/toggleterm.nvim', config = "require('toggleterm-config')"}

  -- comment
  use {'terrortylor/nvim-comment', config = "require('comment-config')", cmd = "CommentToggle"}

  if packer_bootstrap then
    require('packer').sync()
  end

end)
