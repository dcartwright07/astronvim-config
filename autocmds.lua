-- Set key binding
-- Set autocommands
vim.api.nvim_create_augroup("packer_conf", { clear = true })

vim.api.nvim_create_autocmd("BufWritePost", {
  desc = "Sync packer after modifying plugins.lua",
  group = "packer_conf",
  pattern = "plugins/**.lua",
  command = "source <afile> | PackerSync",
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.vm", "*.vtl", "*.shtml", "*.stm" },
  command = "set ft=velocity",
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.jsw",
  command = "set syntax=javascript",
})

vim.cmd([[
  autocmd VimEnter,ColorScheme * lua require("user.theme").telescope_theme()
]])

-- vim.cmd([[
--     let g:vim_vue_plugin_config = {
--     \'syntax': {
--     \  'template': ['html'],
--     \  'script': ['javascript'],
--     \  'style': ['scss'],
--     \},
--     \'full_syntax': [],
--     \'initial_indent': [],
--     \'attribute': 0,
--     \'keyword': 0,
--     \'foldexpr': 0,
--     \'debug': 0,
--     \}
--   ]])

-- vim.api.nvim_exec(
--   [[
--     function! OnChangeVueSyntax(syntax)
--       echo 'Syntax is '.a:syntax
--       if a:syntax == 'html'
--         setlocal commentstring=<!--%s-->
--         setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
--       elseif a:syntax =~ 'css'
--         setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
--       else
--         setlocal commentstring=//%s
--         setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
--       endif
--     endfunction
--   ]],
--   true
-- )

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }
