-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.opt.wrap = true
vim.opt.scrolloff = 10

-- Clipboard support for Zellij (temporary fix)
if (vim.env.SSH_CONNECTION or vim.env_SSH_CLIENT) and vim.env.ZELLIJ then
  vim.g.clipboard = {
    name = "Custom OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = function(lines, phase)
        -- vim.notify("Paste is disabled for security reasons, use system paste function instead.", vim.log.levels.WARN)
        local content = vim.fn.getreg('"')
        return vim.split(content, "\n")
      end,
      ["*"] = function(lines, phase)
        -- vim.notify("Paste is disabled for security reasons, use system paste function instead.", vim.log.levels.WARN)
        local content = vim.fn.getreg('"')
        return vim.split(content, "\n")
      end,
    },
  }
end
