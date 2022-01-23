local wk = require("which-key")

local mappings = {
  ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },                  -- space + e = toggle explorer
  ["Q"] = { ":wq<cr>", "Save & Quit" },                               -- space + shift + q = save and quit
  ["w"] = { ":w!<cr>", "Save" },                                      -- space + w = save file
  ["q"] = { ":q!<cr>", "Quit" },                                      -- space + q = quit file
  ["x"] = { ":bdelete!<cr>", "Close Buffer" },                        -- space + x = close buffer
  ["c"] = { ":e ~/.config/nvim/init.lua<cr>", "Edit Config"},         -- space + c = edit config
  ["f"] = { ":Telescope find_files<cr>", "Telescope Find Files"},     -- space + f = telescope find files
  ["r"] = { ":Telescope live_grep<cr>", "Telescope Live Grep"},       -- space + r = telescope live grep
  ["t"] = { ":Telescope file_browser<cr>", "Telescope Find Browser"}, -- space + t = telescope find browser
  ["g"] = { ":Telescope buffers<cr>", "Telescope Buffers"},           -- space + g = telescope buffers
}

local opts = {
  prefix = "<leader>"
} 

wk.register(mappings, opts)
