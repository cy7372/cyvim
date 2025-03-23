-- 定义运行当前文件的函数
function RunCurrentFile()
  local file = vim.fn.expand("%")
  local ext = vim.fn.expand("%:e")
  if ext == "py" then
    vim.cmd("w") -- 保存文件
    vim.cmd("!python " .. file)
  elseif ext == "sh" then
    vim.cmd("w")
    vim.cmd("!zsh " .. file)
  else
    print("No runner configured for *." .. ext)
  end
end

-- 将 <Space>r 映射到调用 RunCurrentFile 函数
vim.api.nvim_set_keymap("n", "<leader>r", ":lua RunCurrentFile()<CR>", { noremap = true, silent = true })
