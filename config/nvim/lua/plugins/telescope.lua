return {
  {
    "nvim-telescope/telescope.nvim",
    --  keys = {
    --    -- add a keymap to browse plugin files
    --    -- stylua: ignore
    --    {
    --      "<leader>fp",
    --      function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
    --      desc = "Find Plugin File",
    --    },
    --  },
    -- change some options
    keys = {
      { "<leader>pf", LazyVim.telescope("files"), desc = "Find Files (Root Dir)" },
      { "<leader>bb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
          },
        },
      },
    },
  },
}
