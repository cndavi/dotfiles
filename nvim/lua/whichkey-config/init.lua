local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal

local toggle_float = function ()
  local float = Terminal:new({direction = 'float'})
  return float:toggle()
end

local toggle_lazygit = function ()
  local lazygit = Terminal:new({cmd = 'lazygit', direction = 'float'})
  return lazygit:toggle()
end

local mappings = {
  e = { '<cmd>NvimTreeToggle<cr>', 'Explorer' },
  w = { ':w!<cr>', 'Save' },
  q = { ':q!<cr>', 'Quit' },
  Q = { ':wq<cr>', 'Save & Quit' },
  x = { ':bdelete<cr>', 'Close Buffer' },
  E = { ':e ~/.config/nvim/init.lua', 'Edit Config' },
  f = { ':Telescope find_files<cr>', 'Telescope Find Files' },
  r = { ':Telescope live_grep<cr>', 'Telescope Live Grep' },
  b = { ':Telescope file_browser<cr>', 'Telescope File Browser' },
  t = {
    t = {":ToggleTerm<cr>", "Split Below"},
    f = {toggle_float, "Floating Terminal"},
    l = {toggle_lazygit, "LazyGit"}
  },
  l = {
    name = "LSP",
    i = {':LspInfo<cr>', "Connected Language Servers"},
    k = {'<cmd>lua vim.lsp.buf.signaAQture_help()<cr>', "Signature Help"},
    K = {'<cmd>Lspsaga hover_doc<cr>', "Hover Commands"},
    w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Ad Workspace Folder"},
    W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder"},
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    },
    t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition"},
    d = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition"},
    D = {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration"},
    r = {'<cmd>lua vim.lsp.buf.references()<cr>', "References"},
    R = {'<cmd>Lspsaga rename<cr>', "Rename"},
    a = {'<cmd>Lspsaga code_action<cr>', "Code Action"},
    e = {'<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics"},
    n = {'<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic"},
    N = {'<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic"}
  },
}

local opts = {
  prefix = '<leader>'
}

wk.register(mappings, opts)
