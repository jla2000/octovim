return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    config = true,
    lazy = true,
    event = "VeryLazy",
    opts = {
      -- A list of parser names, or "all" (the five listed parsers should always be installed)
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = true,
      textobjects = {
        select = {
          enable = true,

          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ia"] = "@parameter.outer",
            -- You can also use captures from other query groups like `locals.scm`
            -- nvim_buf_set_keymap) which plugins like which-key display
            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
            -- You can optionally set descriptions to the mappings (used in the desc parameter of
            ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>a"] = "@parameter.inner",
          },
          swap_previous = {
            ["<leader>A"] = "@parameter.inner",
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]a"] = "@parameter.outer",
          },
          goto_next_end = {
            ["]A"] = "@parameter.outer",
          },
          goto_previous_start = {
            ["[a"] = "@parameter.outer",
          },
          goto_previous_end = {
            ["[A"] = "@parameter.outer",
          }
        }
      }
    }
  }
}
