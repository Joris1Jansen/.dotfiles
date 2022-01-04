require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.vuels.setup{}
require'lspconfig'.volar.setup{
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}
require("flutter-tools").setup{}
require'lspconfig'.tailwindcss.setup{}
