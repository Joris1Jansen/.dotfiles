local nnoremap = require("theprepjj.keymap").nnoremap

function lsp_keymap()
    nnoremap("<leader>lc", function() require("vim.lsp.buf").code_action() end)
    nnoremap("<leader>ld", function() require("vim.lsp.buf").definition() end)
    nnoremap("<leader>lf", function() require("vim.lsp.buf").formatting() end)
    nnoremap("<leader>lh", function() require("vim.lsp.buf").hover() end)
    nnoremap("<leader>li", function() require("vim.lsp.buf").implementation() end)
    nnoremap("<leader>ln", function() require("vim.lsp.diagnostic").goto_next() end)
    nnoremap("<leader>lp", function() require("vim.lsp.diagnostic").goto_prev() end)
    nnoremap("<leader>lrf", function() require("vim.lsp.buf").references() end)
    nnoremap("<leader>lrn", function() require("vim.lsp.buf").rename() end)
    nnoremap("<leader>lt", function() require("vim.lsp.buf").type_definition() end)
end
