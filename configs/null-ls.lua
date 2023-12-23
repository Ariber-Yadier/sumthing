local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local code_actions = null_ls.builtins.code_actions
local formatting = null_ls.builtins.formatting

local sources = {
  code_actions.eslint,
  formatting.prettierd.with({
    filetypes = { "_all" }
  }),
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ async = false })
        end
      })
    end
  end
}

