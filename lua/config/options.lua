-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.opt.wrap = true
vim.opt.scrolloff = 10

-- Customized OSC 52 for supporting remote Zellij (temporary fix)
if (vim.env.SSH_CONNECTION or vim.env_SSH_CLIENT) or vim.env.ZELLIJ then
  vim.g.clipboard = {
    name = "Custom OSC 52",
    copy = {
      ["+"] = function(lines)
        require("vim.ui.clipboard.osc52").copy("+")(lines)
        vim.fn.setreg('"', table.concat(lines, "\n"))
      end,
      ["*"] = function(lines)
        require("vim.ui.clipboard.osc52").copy("*")(lines)
        vim.fn.setreg('"', table.concat(lines, "\n"))
      end,
    },
    paste = {
      ["+"] = function()
        local content = vim.fn.getreg('"')
        return vim.split(content, "\n")
      end,
      ["*"] = function()
        local content = vim.fn.getreg('"')
        return vim.split(content, "\n")
      end,
    },
  }
end
