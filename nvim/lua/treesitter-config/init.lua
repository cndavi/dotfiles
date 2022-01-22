require'nvim-treesitter.configs'.setup {
  ensure_installed = {'html', 'javascript', 'lua', 'css'},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = {
  enable = true,
  },
  rainbow = {
    enable = false,  -- turn on rainbow tags
    extended_mode = true, 
    max_file_lines = nil,
  },
  autopairs = {
    enable = true
  }
}

