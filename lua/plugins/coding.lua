return {
  -- {
  --   "saghen/blink.cmp",
  --   opts = {
  --     completion = {
  --       -- https://cmp.saghen.dev/configuration/completion.html#list
  --       list = {
  --         selection = {
  --           preselect = false,
  --           auto_insert = false,
  --         },
  --       },
  --       trigger = {
  --         -- https://cmp.saghen.dev/configuration/keymap.html#super-tab
  --         show_in_snippet = false,
  --       },
  --     },
  --     -- https://cmp.saghen.dev/configuration/keymap.html#super-tab
  --     keymap = {
  --       preset = "super-tab",
  --       ["<Right>"] = { "accept", "fallback" },
  --       ["<Enter>"] = { "accept", "fallback" },
  --     },
  --   },
  -- },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      mapping = {
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
        ["<C-Space>"] = {},
      },
    },
  },
}
