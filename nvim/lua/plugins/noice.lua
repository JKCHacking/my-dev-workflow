return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup({
      cmdline = {
        view = "cmdline_popup"
      },
      views = {
        cmdline_popup = {
          position = {
            row = "10%",   -- vertically center
            col = "50%",   -- horizontally center
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
        },
      },
      presets = {
        bottom_search = false, -- disable bottom search
        command_palette = false,
      }
    })
  end
}
