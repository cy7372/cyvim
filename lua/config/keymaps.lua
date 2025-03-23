-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

require("config.functions")
map("n", "<C-a>", "ggVG", { desc = "Select All" })
-- 运行当前文件：Ctrl+Enter
map("n", "<C-CR>", ":lua RunCurrentFile()<CR>", { desc = "Run Current File" })

-- 用 Ctrl+t 打开/关闭终端
map("n", "<C-t>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })
map("t", "<C-t>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- 复制ctrl+c
map("n", "<C-c>", '"+yy', { noremap = true, silent = true })
map("v", "<C-c>", '"+y', { noremap = true, silent = true })

-- 使用 Ctrl+/ 切换当前行注释
vim.keymap.set("n", "<C-/>", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Toggle comment for current line" })
vim.keymap.set("v", "<C-/>", "<cmd>normal gc<cr>gv", { desc = "Toggle comment for selected lines" })
