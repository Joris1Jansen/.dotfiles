local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
    -- lua
    -- formatting.stylua,
    -- python
    formatting.black.with({
        extra_args = { "--line-length 120" }
    }),
    -- golang
    diagnostics.golangci_lint,
    -- js/ts
    formatting.eslint,
    formatting.prettier,
    -- tailwind
    formatting.rustywind,
}

null_ls.setup({
    sources = sources
})
