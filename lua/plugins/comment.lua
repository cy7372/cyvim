return {
  "numToStr/Comment.nvim",
  opts = {
    -- 在注释符号和文本间添加空格
    padding = true,
    -- 注释后保持光标位置不变
    sticky = true,
    -- 忽略规则，nil 表示不过滤任何行
    ignore = nil,
    -- NORMAL 模式下切换注释的映射
    toggler = {
      line = "gcc", -- 切换当前行行注释
      block = "gbc", -- 切换当前行块注释
    },
    -- 操作符待命模式下的映射（用于选区注释）
    opleader = {
      line = "gc", -- 行注释
      block = "gb", -- 块注释
    },
    -- 额外映射，添加新注释行
    extra = {
      above = "gcO", -- 在当前行上方添加注释行
      below = "gco", -- 在当前行下方添加注释行
      eol = "gcA", -- 在当前行末添加注释
    },
    -- 控制插件自动创建哪些映射
    mappings = {
      basic = true, -- 启用基本映射（gcc、gbc、gc{motion} 等）
      extra = true, -- 启用额外映射（gcO、gco、gcA）
      extended = false, -- 禁用扩展映射（例如 g>、g< 等）
    },
    -- 不启用 ts-context-commentstring 集成，完全依赖 Comment.nvim 默认逻辑
    pre_hook = nil,
    post_hook = nil,
  },
}
