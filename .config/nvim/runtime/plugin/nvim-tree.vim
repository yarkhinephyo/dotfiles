lua << EOF
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
        git = false,
      },
    },
  },
  git = {
    enable = false,
  },
})
EOF

nnoremap <C-t> :NvimTreeToggle<CR>

