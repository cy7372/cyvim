return {
  "folke/snacks.nvim",
  lazy = false,
  opts = {
    explorer = {
      replace_netrw = true, -- 使用 explorer 替换 netrw
    },
    picker = {
      sources = {
        explorer = {
          auto_close = true, -- 打开文件后自动关闭 explorer
          layout = { preset = "sidebar" },
          config = function(opts)
            return require("snacks.picker.source.explorer").setup(opts)
          end,
        },
      },
    },
  },
  config = function(_, opts)
    require("snacks").setup(opts)
  end,
}
