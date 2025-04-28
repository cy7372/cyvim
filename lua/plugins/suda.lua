return {
  "lambdalisue/suda.vim",
  config = function()
    -- 可选：让 suda 自动识别不可写/不可读文件，自动切换为 suda://
    vim.g.suda_smart_edit = 1
  end
}
