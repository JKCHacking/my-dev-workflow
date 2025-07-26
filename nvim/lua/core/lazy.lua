-- core/lazy.lua

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- require("lazy").setup({
--     {
--         "nvim-tree/nvim-tree.lua",
--         dependencies = { "nvim-tree/nvim-web-devicons" },
--         config = function()
--             require("nvim-tree").setup({})
--         end
--     },
--     {
--         "nvim-telescope/telescope.nvim",
--         tag = "0.1.4",
--         dependencies = { "nvim-lua/plenary.nvim" },
--         config = function()
--             require("telescope").setup({})
--         end
--     },
--     {
--         "catppuccin/nvim",
--         name = "catppuccin",
--         priority = 1000,
--         config = function()
--             vim.cmd.colorscheme "catppuccin"
--         end
--     },
--     {
--         "williamboman/mason.nvim",
--         build = ":MasonUpdate",
--         config = function()
--             require("mason").setup()
--         end
--     },
--     {
--         "williamboman/mason-lspconfig.nvim",
--         config = function()
--             require("mason-lspconfig").setup({
--                 ensure_installed = { "gopls" }
--             })
--         end
--     },
--     {
--         "neovim/nvim-lspconfig",
--         config = function()
--             local lspconfig = require("lspconfig")
--             lspconfig.gopls.setup({})
--         end
--     }
-- })
