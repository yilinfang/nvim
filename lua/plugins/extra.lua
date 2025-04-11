-- Extra plugins

return {
  { -- GitHub Copilot
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "BufReadPost",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = false,
        keymap = {
          accept = "<M-y>",
          accept_word = "<M-w>",
          accept_line = "<M-l>",
          next = "<M-n>",
          prev = "<M-p>",
          dismiss = "<M-d>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        -- help = true,
      },
    },
  },
}
