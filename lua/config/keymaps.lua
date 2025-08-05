-- Función para establecer los mapeos de teclas
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
vim.opt.mouse = ""
map("n", "<leader>h", ":bprevious<CR>") -- Go to the previous buffer
map("n", "<leader>l", ":bnext<CR>") -- Go to the next buffer
map("n", "<leader>L", "<cmd>Lazy<CR>")
