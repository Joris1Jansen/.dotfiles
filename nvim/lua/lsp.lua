require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.vuels.setup{}
require'lspconfig'.volar.setup{
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.gopls.setup{
    cmd = {"gopls", "serve"},
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
}
