return {
  "folke/tokyonight.nvim", -- 插件名称
  lazy = false, -- 插件立即加载
  priority = 1000, -- 设置较高的加载优先级
  opts = {
    -- 设置主题风格
    style = "night", -- 可选值: "night", "storm", "moon", "day"
    transparent = false, -- 启用透明背景
    styles = {
      sidebars = "dark", -- 侧边栏样式，"dark" 或 "normal"
      floats = "dark", -- 浮动窗口样式
    },
    on_colors = function(colors)
      colors.bg_dark = "#1e1e2e" -- 设置背景色
    end,
    on_highlights = function(highlights, colors)
      highlights.TelescopeBorder = { fg = colors.bg_dark, bg = colors.bg_dark }
      highlights.TelescopePromptNormal = { bg = colors.bg_dark }
    end,
  },
}
