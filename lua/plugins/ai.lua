return {
  -- {
  --   "zbirenbaum/copilot.lua",
  --   opts = {
  --     copilot_model = "gpt-4o-copilot",
  --     suggestion = {
  --       keymap = {
  --         accept = "<M-S-y>",
  --         accept_word = "<M-S-w>",
  --         accept_line = "<M-S-l>",
  --         next = "<M-S-n>",
  --         prev = "<M-S-p>",
  --         dismiss = "<M-S-d>",
  --       },
  --     },
  --   },
  -- },
  {
    "supermaven-inc/supermaven-nvim",
    opts = {
      keymaps = {
        accept_suggestion = "<M-y>",
        clear_suggestion = "<M-c>",
        accept_word = "<M-w>",
      },
    },
  },
}
