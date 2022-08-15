local nnoremap = require("theprepjj.keymap").nnoremap

local silent = { silent = true }

-- nnoremap("<Leader>d", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
nnoremap("<leader>db", function() require("dap").toggle_breakpoint() end, silent)
nnoremap("<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, silent)
nnoremap("<Up>", function() require("dap").continue() end, silent)
nnoremap("<Down>", function() require("dap").step_over() end, silent)
nnoremap("<Right>", function() require("dap").step_into() end, silent)
nnoremap("<Left>", function() require("dap").step_out() end, silent)
nnoremap("<leader>dg", function() require("dap-go").debug_test() end, silent)
-- vim.keymap.set("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>")
