return {
  -- Normal Mode
  n = {
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
    ["<C-k>"] = { ":m-2<cr>", desc = "move line up" },
    ["<C-j>"] = { ":m+1<cr>", desc = "move line down" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    ["<leader>D"] = { ":Dash<cr>", silent = true, desc = "Search using Dash" },
    ["<C-g>"] = { ":G<cr>", silent = true, desc = "Open Fugitive" },
    ["<leader>T"] = { ":TodoTelescope<cr>", desc = "See all marked comments" },
    ["<C-/>"] = { "<cmd>:ToggleTermToggleAll<cr>", desc = "Toggle All Terminals" },
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
  },

  -- Terminal
  t = {
    ["<C-/>"] = { "<cmd>:ToggleTermToggleAll<cr>", desc = "Toggle All Terminals" },
  },

  -- Insert Mode
  i = {
    ["<C-k>"] = { "<Esc>:m-2<cr>==gi", desc = "move line up" },
    ["<C-j>"] = { "<Esc>:m+1<cr>==gi", desc = "move line down" },
    ["<C-/>"] = { "<cmd>:ToggleTermToggleAll<cr>", desc = "Toggle All Terminals" },
  },

  -- Visual Mode
  v = {
    ["<C-k>"] = { ":m '<-2<cr>gv-gv", desc = "move line up" },
    ["<C-j>"] = { ":m '>+1<cr>gv=gv", desc = "move line down" },
    ["<C-/>"] = { "<cmd>:ToggleTermToggleAll<cr>", desc = "Toggle All Terminals" },
  },
}
