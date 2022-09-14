local Remap = require("theprepjj.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-t>", ":lua require('telescope.builtin').git_files()<CR>")
nnoremap("<leader>ts", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input(\"Grep For > \")})<CR>")
nnoremap("<Leader>tf", ":lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>td", ":lua require('telescope.builtin').diagnostics()<CR>")

nnoremap("<leader>tb", ":lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>th", ":lua require('telescope.builtin').help_tags()<CR>")
nnoremap("<leader>tgb", ":lua require('theprepjj.telescope').git_branches()<CR>")
nnoremap("<leader>tgwt", ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
nnoremap("<leader>tw", ":lua require('telescope.builtin').grep_string { search = vim.fn.expand(\"<cword>\") }<CR>")
