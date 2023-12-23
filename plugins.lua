local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "svelte-language-server",
        "typescript-language-server",
        "emmet-language-server",
        "eslint-lsp",
        "marksman",
        "remark-language-server",
        "graphql-language-service-cli"
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    init = function()
      require 'nvim-treesitter.configs'.setup {
        matchup = {
          enable = true
        }
      }
    end
  },
  {
    "TimUntersberger/neogit",
    init = function()
      require('neogit').setup {}
    end
  },
  {
    "Vonr/align.nvim"
  },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    setup = function()
      vim.fn["mkdp#util#install"]()
    end
  },
  {
    "mzlogin/vim-markdown-toc",
    ft = "markdown"
  },
  {
    "fidian/hexmode",
    lazy = false
  },
  {
    "tpope/vim-abolish",
    lazy = false
  },
  {
    "jakewvincent/mkdnflow.nvim",
    ft = "markdown",
    init = function()
      require('mkdnflow').setup({
        modules = {
          maps = false
        }
      })
    end
  },
  {
    "windwp/nvim-ts-autotag",
    init = function()
      require('nvim-ts-autotag').setup {}
    end
  },
  {
    "andymass/vim-matchup",
    lazy = false,
    setup = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  }
}
return plugins

