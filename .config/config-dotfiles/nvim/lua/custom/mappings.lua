local M = {}

M.disabled = {
  n = {
    ["<leader>v"] = "",
  }
}

M.nvimtree = {
  n = {
    ["<leader>pv"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  }
}

M.lspconfig = {
  plugin = true,
  n = {
    ["<leader>vrn"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },
    ["<leader>vca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

return M
