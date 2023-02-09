return {
  { "junegunn/vader.vim" },
  { "patstockwell/vim-monokai-tasty" },
  -- { "lepture/vim-velocity" },
  { 'tpope/vim-surround' },
  { 'tpope/vim-sleuth' },
  { "tpope/vim-fugitive" },
  { "albanm/vuetify-vim" },
  { "rizzatti/dash.vim" },
  { "alvan/vim-closetag" },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function() require("todo-comments").setup {} end,
  },
  {
    'declancm/cinnamon.nvim',
    config = function() require('cinnamon').setup() end
  },
  { 'vim-vdebug/vdebug' },
  { 'pangloss/vim-javascript' },
  { 'elzr/vim-json' },
  { 'vim-scripts/Rainbow-Parenthesis' },
  { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' },
  { 'nvim-treesitter/playground' },
  { 'farmergreg/vim-lastplace' },
  { 'nelstrom/vim-visual-star-search' },
  { 'sickill/vim-pasta',
    config = function()
      vim.g.pasta_disabled_filetypes = { 'fugitive' }
    end
  },
  { 'sheerun/vim-polyglot' },
}
