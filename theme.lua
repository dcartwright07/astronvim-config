local M = {}

M.hi_colors = function()
  local colors = {
    bg = "#16161D",
    bg_alt = "#1F1F28",
    fg = "#DCD7BA",
    green = "#76946A",
    red = "#E46876",
    purple = "#AF87FF",
    orange = "#FF9700",
    white = "#FFFFFF",
    light_blue = "#62D8F1",
    magenta = "#FC1A70",
  }
  local color_binds = {
    bg = { group = "NormalFloat", property = "background" },
    bg_alt = { group = "Cursor", property = "foreground" },
    fg = { group = "Cursor", property = "background" },
    green = { group = "diffAdded", property = "foreground" },
    red = { group = "diffRemoved", property = "foreground" },
  }
  local function get_hl_by_name(name)
    local ret = vim.api.nvim_get_hl_by_name(name.group, true)
    return string.format("#%06x", ret[name.property])
  end

  vim.api.nvim_set_hl(0, "@variable", {
    fg = colors.white,
  })
  vim.api.nvim_set_hl(0, "@variable.builtin", {
    fg = colors.orange,
    italic = true
  })
  vim.api.nvim_set_hl(0, "@keyword.function", {
    fg = colors.light_blue,
    italic = true
  })
  vim.api.nvim_set_hl(0, "@parameter", {
    fg = colors.orange,
    italic = true
  })
  vim.api.nvim_set_hl(0, "@type", {
    fg = colors.light_blue,
    -- fg = "#337dff",
  })
  vim.api.nvim_set_hl(0, "@type.builtin", {
    italic = true,
  })
  vim.api.nvim_set_hl(0, "@type.qualifier", {
    fg = colors.magenta,
  })
  vim.api.nvim_set_hl(0, "@tag", {
    fg = colors.magenta,
  })
  vim.api.nvim_set_hl(0, "@tag.delimiter", {
    fg = colors.white,
  })
  vim.api.nvim_set_hl(0, "@tag.attribute", {
    fg = colors.purple,
  })
  vim.api.nvim_set_hl(0, "@label", {
    fg = colors.magenta,
  })

  for k, v in pairs(color_binds) do
    local found, color = pcall(get_hl_by_name, v)
    if found then
      colors[k] = color
    end
  end
  return colors
end

M.telescope_theme = function()
  local function set_bg(group, bg)
    vim.cmd("hi " .. group .. " guibg=" .. bg)
  end

  local function set_fg_bg(group, fg, bg)
    vim.cmd("hi " .. group .. " guifg=" .. fg .. " guibg=" .. bg)
  end

  local colors = M.hi_colors()
  set_fg_bg("TelescopeBorder", colors.bg_alt, colors.bg)
  set_fg_bg("TelescopePromptBorder", colors.bg, colors.bg)
  set_fg_bg("TelescopePromptNormal", colors.red, colors.bg_alt)
  set_fg_bg("TelescopePromptPrefix", colors.red, colors.bg)
  set_fg_bg("TelescopePromptTitle", '#FFFFFF', colors.red)
  -- set_fg_bg("TelescopePreviewBorder", colors.bg, colors.bg)
  set_fg_bg("TelescopePreviewTitle", colors.bg, colors.green)
  set_fg_bg("TelescopeResultsTitle", colors.bg, colors.bg)
  set_fg_bg("TelescopeResultsBorder", colors.bg, colors.bg)
  set_fg_bg("LvimInfoHeader", colors.bg, colors.green)
  set_fg_bg("LvimInfoIdentifier", colors.red, colors.bg_alt)
  set_fg_bg("TelescopeSelection", colors.bg_alt, '#FFFF87')
  set_bg("TelescopeNormal", colors.bg)
end

return M
