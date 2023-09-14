return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true,
    keys = {
      { "-", mode = "n", function() require("oil").open() end, desc = "Oil" },
    }
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    event = "VeryLazy",
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { "<leader>ff", mode = "n", function() require("telescope.builtin").find_files() end, { desc = "Find files" } },
      { "<leader>fr", mode = "n", function() require("telescope.builtin").oldfiles() end, { desc = "Find recent files" } },
      { "<leader>fb", mode = "n", function() require("telescope.builtin").buffers() end, { desc = "Show open buffers" } },
      { "<leader>fg", mode = "n", function() require("telescope.builtin").live_grep() end, { desc = "Search files" } },
    }
  }
}
