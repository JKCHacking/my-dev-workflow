return {
    {
        "williamboman/mason.nvim",
        version = "1.*",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        version = "1.*",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "gopls",
                    "pyright",
                    "terraform-ls",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.gopls.setup({})
        end
    }
}
