require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "a", action = "create"  },
        { key = "d", action = "remove"  },
        { key = "r", action = "rename"  },
        { key = "<C-r>", action = "full_rename"  },
        { key = "i", action = "vsplit"  },
        { key = "<C-t>", action = "close"  },
        { key = "t", action = "tabnew"  },
      },
    },
  },
  renderer = {
    group_empty = true,
    indent_markers = {
      enable = true,
    },
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
      },
    },
  },
  git = {
    enable = false,
  },
})

vim.api.nvim_set_keymap('n', '<C-t>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

