return {
  {
    "ojroques/nvim-osc52",
    config = function()
      require("osc52").setup({
        max_length = 0, -- 无长度限制
        silent = false, -- 成功复制后显示提示信息
        trim = false, -- 复制前不去除首尾空格
        tmux_passthrough = true, -- 如果你在 tmux 中使用，确保 tmux 已启用 allow-passthrough
      })
    end,
    keys = {
      -- 普通模式下使用 Ctrl+c 复制当前行
      {
        "<C-c>",
        function()
          require("osc52").copy_register("+")
        end,
        mode = "n",
        desc = "使用 OSC52 复制当前行",
      },
      -- 可视模式下使用 Ctrl+c 复制选中文本
      {
        "<C-c>",
        function()
          require("osc52").copy_visual()
        end,
        mode = "v",
        desc = "使用 OSC52 复制选中文本",
      },
    },
  },
}
