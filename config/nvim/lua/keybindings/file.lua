return {
  name = "file", -- optional group name
  -- bug?
  -- r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
  ["1"] = "which_key_ignore",  -- special label to hide it in the popup
  d = { "<cmd>NvimTreeFindFile<cr>", "Toggle Tree at File"},
  e = "Edit File", -- same as above
  f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
  n = { "New File" }, -- just a label. don't create any mapping
  q = { "<cmd>q<cr>", "Quit"},
  Q = { "<cmd>qa!<cr>", "Quit"},
  s = { "<cmd>w<cr>", "Save"},
  t = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree"},
  S = { "<cmd>wa<cr>", "Save"},
}
