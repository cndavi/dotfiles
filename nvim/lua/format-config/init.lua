require'format'.setup {
  html = {{cmd = {'prettier -w'}}},
  css = {{cmd = {'prettier -w'}}},
  json = {{cmd = {'prettier -w'}}},
  javascript = {{cmd = {'prettier -w', './node_modules/.bin/eslint --fix'}}},
  javascriptreact = {{cmd = {'prettier -w', './node_modules/.bin/eslint --fix'}}},
  typescript = {{cmd = {'prettier -w', './node_modules/.bin/eslint --fix'}}},
  typescriptreact = {{cmd = {'prettier -w', './node_modules/.bin/eslint --fix'}}},
}

vim.cmd('autocmd BufWritePost * FormatWrite')
