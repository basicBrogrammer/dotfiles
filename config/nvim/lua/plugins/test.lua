return {
  { "nvim-neotest/neotest", enabled = false },
  {
    "vim-test/vim-test",
    config = function()
      vim.g["test#strategy"] = "vtr"
    end,
    keys = {
      { "<leader>tn", "<cmd>TestNearest<cr>", desc = "Test Current Line" },
      { "<leader>tf", "<cmd>TestFile<cr>", desc = "Test File" },
      { "<leader>tl", "<cmd>TestLast<cr>", desc = "Test Last" },
      { "<leader>tA", "<cmd>TestSuite<cr>", desc = "Test All" },
    },
  },
  "christoomey/vim-tmux-runner",
}
