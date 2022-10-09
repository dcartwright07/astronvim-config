-- Set key binding
-- Set autocommands
vim.api.nvim_create_augroup("packer_conf", { clear = true })

vim.api.nvim_create_autocmd("BufWritePost", {
  desc = "Sync packer after modifying plugins.lua",
  group = "packer_conf",
  pattern = "plugins.lua",
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

-- vim.api.nvim_create_autocmd({ "OnChangeVueSyntax" }, {
--   command = function()
--     vim.cmd([[
--       function! OnChangeVueSyntax(syntax)
--         if a:syntax == 'html'
--           setlocal commentstring=<!--%s-->
--           setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
--         elseif a:syntax =~ 'css'
--           setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
--         else
--           setlocal commentstring=//%s
--           setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
--         endif
--       endfunction
--     ]])
--   end,
-- })

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
