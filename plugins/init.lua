return {
  { "junegunn/vader.vim" },
  { "patstockwell/vim-monokai-tasty" },
  { "leafOfTree/vim-vue-plugin" },
  -- { "lepture/vim-velocity" },
  { "tpope/vim-fugitive" },
  { "albanm/vuetify-vim" },
  { "rizzatti/dash.vim" },
  { "alvan/vim-closetag" },
  { "sheerun/vim-polyglot" },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function() require("todo-comments").setup {} end,
  },
  {
    'declancm/cinnamon.nvim',
    config = function() require('cinnamon').setup() end
  },
}
