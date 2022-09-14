local nnoremap = require("theprepjj.keymap").nnoremap

local silent = { silent = true }

-- Terminal commands
-- These functions are stored in harpoon.  A plugn that I am developing
nnoremap("<leader>ha", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end, silent)
nnoremap("<C-h>", function() require("harpoon.ui").toggle_quick_menu() end, silent)

nnoremap("<leader>h1", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<leader>h2", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<leader>h3", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<leader>h4", function() require("harpoon.ui").nav_file(4) end, silent)
