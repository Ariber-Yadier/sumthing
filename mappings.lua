local M = {
  dap = {
    n = {
      ["<leader>db"] = {
        "<cmd>DapToggleBreakpoint<CR>",
        "Toggle Breakpoint"
      },
      ["<leader>ds"] = {
        function()
          local widgets = require('dap.ui.widgets')
          local sidebar = widgets.sidebar(widgets.scope)
          sidebar.open()
        end,
        "Open Debug Sidebar"
      },
      ["<leader>df"] = {
        function()
          vim.diagnostic.open_float()
        end,
        "Open Diagnostic"
      }
    }
  },
  neogit = {
    n = {
      ["<leader>mg"] = {
        "<cmd>Neogit<CR>",
        "Open Neogit"
      }
    }
  },
  align = {
    x = {
      ["<leader>aa"] = {
        function()
          require 'align'.align_to_string(false, true, true)
        end,
        "Align"
      }
    }
  },
  markdown = {
    n = {
      ["<leader>mk"] = {
        "<cmd>MarkdownPreviewToggle<CR>",
        "Markdown Preview"
      }
    }
  },
  hexmode = {
    n = {
      ["<leader>mh"] = {
        "<cmd>Hexmode<CR>",
        "Hex Mode"
      }
    }
  },
  tabs = {
    n = {
      ["<leader>tk"] = {
        function()
          require 'nvchad_ui.tabufline'.move_buf(1);
        end,
        "Move Tab Right"
      },
      ["<leader>tj"] = {
        function()
          require 'nvchad_ui.tabufline'.move_buf(-1);
        end,
        "Move Tab Left"
      }
    }
  }
}
return M

