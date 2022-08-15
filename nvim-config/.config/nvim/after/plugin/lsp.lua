-- typescript
require('lspconfig').tsserver.setup(config())

-- golang
require('lspconfig').gopls.setup(config({
    cmd = { "gopls" },
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}))


-- python
require('lspconfig').pyright.setup(config())


-- yaml
require('lspconfig').yamlls.setup{}
