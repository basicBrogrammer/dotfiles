local M = {}

local mappings = {
  f = require("keybindings/file"),
  b = require("keybindings/buffer"), -- buffer
  p = require("keybindings/project"), -- project
  w = {}, -- window
  j = {}, -- jumpy/hoppy
  m = {}, -- mode
  g = {}, -- git
}

M.setup = function()
  local which_key = require "which-key"

  local opts = {
	mode = "n", -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
 }
 local vopts = {
      mode = "v", -- VISUAL mode
      prefix = "<leader>",
      buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true, -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = true, -- use `nowait` when creating keymaps
    }


  which_key.register(mappings, opts)
  -- which_key.register(vmappings, vopts)
end

return M
