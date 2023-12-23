local lspconfig = require("lspconfig")

lspconfig.eslint.setup {
  cmd = { 'eslint-lsp', '--stdio' }
}
lspconfig.svelte.setup {}
lspconfig.emmet_language_server.setup {
  filetypes = { "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "svelte", "typescriptreact", "vue" }
}
lspconfig.marksman.setup {}
lspconfig.tsserver.setup {
  root_dir = lspconfig.util.root_pattern("package.json"),
  single_file_support = false
}
lspconfig.graphql.setup {}
