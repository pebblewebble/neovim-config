-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.wo.relativenumber = true
vim.g.nvim_tree_respect_buf_cwd = 1


local function center_cursor()
  vim.api.nvim_feedkeys("zz", "n", true)
end

-- Map Ctrl-d (page down) and center the cursor
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })

-- Map Ctrl-u (page up) and center the cursor
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
