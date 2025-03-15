return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        -- https://cmp.saghen.dev/configuration/completion.html#list
        list = {
          selection = {
            preselect = false,
            auto_insert = false,
          },
        },
      },
      -- https://cmp.saghen.dev/configuration/keymap.html#super-tab
      keymap = {
        preset = "super-tab",
        ["<Right>"] = { "accept", "fallback" },
        ["<Enter>"] = { "accept", "fallback" },
      },
    },
  },
}
