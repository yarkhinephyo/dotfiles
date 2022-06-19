require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "bash",
    "lua",
    "vim",
    "markdown",
    "yaml",
    "dockerfile",
    "python",
    "html",
    "javascript",
    "json",
  },

  -- install parsers asychronously
  sync_install = false,

  ignore_install = {},

  highlight = {
    enable = true,
    disable = {},
  },

  indent = {
    disable = { "python", },
  }
}
