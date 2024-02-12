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

M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():append()
      end,
      "󱡁 Harpoon Add file",
    },
    ["<leader>h"] = { "<CMD>Telescope harpoon marks<CR>", "󱡀 Toggle quick menu" },
    ["<leader>hb"] = {
      function()
        local harpoon = require "harpoon"
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      "󱠿 Harpoon Menu",
    },
    ["<C-t>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():select(1)
      end,
      "󱪼 Navigate to file 1",
    },
    ["<C-n>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():select(2)
      end,
      "󱪽 Navigate to file 2",
    },
    ["<C-m"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():select(3)
      end,
      "󱪾 Navigate to file 3",
    },
  },
}

M.telescope = {
  v = {
    ["<leader>fg"] = { "<cmd> Telescope grep_string <CR>", "Live grep" },
  },

  n = {
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
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
