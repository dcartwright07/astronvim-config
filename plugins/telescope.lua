return {
  defaults = {
    prompt_prefix = "   ",
    layout_strategy = "bottom_pane",
    -- selection_caret = "  ",
    entry_prefix = "  ",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.70,
      preview_cutoff = 120,
    },
    -- border = {},
    -- borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
    borderchars = {
      prompt = { "=", " ", " ", " ", " ", " ", " ", " " },
      results = { " ", " ", " ", " ", " ", " ", " ", " " },
      preview = { "─", " ", " ", "│", "╭", " ", " ", " " },
    },
  },
  aerial = {
    show_nesting = true,
  },
}
