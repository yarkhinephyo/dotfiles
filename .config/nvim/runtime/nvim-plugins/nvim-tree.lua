-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Migrating-To-on_attach
local function my_on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return {
      desc = 'nvim-tree: ' .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true
    }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 'a', api.fs.create, opts('Create'))
  vim.keymap.set('n', 'd', api.fs.remove, opts('Remove'))
  vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))
  vim.keymap.set('n', 't', api.node.open.tab, opts('Open: New Tab'))
  vim.keymap.set('n', 'c', api.fs.cut, opts('Cut'))
  vim.keymap.set('n', 'p', api.fs.paste, opts('Paste'))
  vim.keymap.set('n', '<C-t>', api.tree.close, opts('Close'))

  -- Deleting default mappings
  vim.keymap.set('n', 'O', '', { buffer = bufnr })
  vim.keymap.del('n', 'O', { buffer = bufnr })
  vim.keymap.set('n', '<2-RightMouse>', '', { buffer = bufnr })
  vim.keymap.del('n', '<2-RightMouse>', { buffer = bufnr })
  vim.keymap.set('n', 'D', '', { buffer = bufnr })
  vim.keymap.del('n', 'D', { buffer = bufnr })
  vim.keymap.set('n', 'E', '', { buffer = bufnr })
  vim.keymap.del('n', 'E', { buffer = bufnr })
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
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

