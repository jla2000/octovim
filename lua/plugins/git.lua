return {
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gg", mode = "n", function() require("lazygit").lazygit() end, { desc = "LazyGit" }}
    }
  },
}
