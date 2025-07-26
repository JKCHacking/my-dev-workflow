-- core/options.lua

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.splitright = true
opt.splitbelow = true
opt.clipboard = "unnamedplus"
opt.showmode = false   -- Don't show "-- INSERT --"
opt.laststatus = 3     -- Single global statusline (no extra line)
opt.cmdheight = 0
opt.fileformats = { "unix", "dos" }  -- handle LF first, then CRLF
opt.fileformat = "unix"              -- always save as LF

vim.opt.list = true
vim.opt.listchars = {
  space = "·",   -- symbol for space
  tab = "» ",    -- symbol for tabs
  trail = "•",   -- trailing space
  extends = "⟩", -- text continues to the right
  precedes = "⟨",-- text continues to the left
  nbsp = "␣",    -- non-breaking space
}

