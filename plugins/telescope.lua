return {
  defaults = {
    prompt_prefix = "   ",
    borderchars = {
      prompt = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
      results = { "─", "▐", "─", "│", "╭", "▐", "▐", "╰" },
      preview = { " ", " ", " ", "▌", "▌", " ", " ", "▌" },
    },
    selection_caret = "❯ ",
    layout_config = {
      width = 0.90,
      height = 0.7,
      preview_cutoff = 120,
      horizontal = {
        preview_width = function(_, cols, _)
          return math.floor(cols * 0.6)
        end,
      },
      vertical = {
        width = 0.9,
        height = 0.95,
        preview_height = 0.5,
      },
      flex = {
        horizontal = {
          preview_width = 0.9,
        },
      },
    },
    layout_strategy = "bottom_pane",
  },
  aerial = {
    show_nesting = true,
  },
}
