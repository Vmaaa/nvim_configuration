return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  optional = true,
  opts = function()
    local bufferline = require("catppuccin.groups.integrations.bufferline")
    bufferline.get = bufferline.get or bufferline.get_theme
  end,
}
