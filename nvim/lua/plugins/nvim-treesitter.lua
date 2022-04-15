require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
  },
  textsubjects = {
    enable = true,
    keymaps = { ["."] = "textsubjects-smart" },
  },
}
