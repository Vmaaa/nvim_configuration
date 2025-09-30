require("config.lazy")
require("mason-lspconfig").setup({
  automatic_installation = true,
  ensure_installed = {},
})
require("copilot").setup({
  suggestion = {
    enabled = true,
    auto_trigger = true,
    trigger_on_accept = true,
    hide_during_completion = true,
    keymap = {
      accept = "<C-Tab-1>",
    },
  },
  panel = { enabled = true, auto_refresh = true, keymap = { accept = "<Tab>" } },
})

require("catppuccin").setup({
  flavour = "macchiato", -- latte, frappe, macchiato, mocha
  transparent_background = true, -- disables setting the background color.
  float = {
    transparent = true,
    solid = false, -- if true, the float background will be set to the background color of the current theme.
  },
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = { "italic" },
    functions = { "bold" },
    keywords = { "bold" },
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
    copilot_vim = true,
  },
  highlight_overrides = {
    all = function(_)
      return {
        CursorLine = { bg = "NONE", bold = true },
        CursorLineNr = { fg = "#FFFFFF", bold = true },
        BlinkCmpMenu = { bg = "NONE", fg = "#FFFFFF" },
        BlinkCmpMenuSelection = { bg = "NONE", fg = "#FFFFFF" },
        CmpBorder = { fg = "NONE", bg = "NONE" },
      }
    end,
  },
})
vim.cmd.colorscheme("catppuccin")

require("blink-cmp").setup({
  completion = {
    accept = {
      dot_repeat = false,
    },
    keyword = { range = "prefix" },
    list = {
      selection = { "manual" },
    },
    menu = {
      border = "padded",
    },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 100,
      window = {
        border = "padded",
      },
    },
    ghost_text = {
      enabled = false,
      show_with_selection = false,
      show_with_menu = false,
      show_without_menu = false,
    },
  },
  sources = {
    default = { "lsp", "path", "snippets" },
  },
  fuzzy = {
    sorts = {
      "exact",
      "score",
      "sort_text",
    },
  },
})
