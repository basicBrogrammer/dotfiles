local M = {}

local mappings = {
  f = require("user.keybindings/file"),
  b = require("user.keybindings/buffer"), -- buffer
  p = require("user.keybindings/project"), -- project
  w = {}, -- window
  j = {}, -- jumpy/hoppy
  m = {}, -- mode
  g = {
	  name ="Git",
	  s = { "<cmd>Neogit<cr>", "Status"}
  }, -- git
  s = { 
    name="Search", 
    c = {"<cmd>nohlsearch<CR>", "Clear"},
    l = {"<cmd>Telescope live_grep<CR>", "Live Grep"},
  },
  q = { "<cmd>q<cr>", "Quit"},
  Q = { "<cmd>qa!<cr>", "Sudo Quit"},
  d = {
    name = "DAP",
    b ={ "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpooint"} ,
    c ={ "<cmd>lua require'dap'.continue()<cr>", "Continue"},
    i ={ "<cmd>lua require'dap'.step_into()<cr>", "Step Into"} ,
    o ={ "<cmd>lua require'dap'.step_over()<cr>", "Step Over"} ,
    O ={ "<cmd>lua require'dap'.step_out()<cr>", "Step Out"} ,
    r ={ "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl"} ,
    l ={ "<cmd>lua require'dap'.run_last()<cr>", "Run Last"} ,
    u ={ "<cmd>lua require'dapui'.toggle()<cr>", "Toggle"} ,
    t ={ "<cmd>lua require'dap'.terminate()<cr>", "Terminate"} ,
  }
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
