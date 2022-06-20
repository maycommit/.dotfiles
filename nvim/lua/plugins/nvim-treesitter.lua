require('nvim-treesitter.configs').setup {
  indent = {
    enable = true
  },
  highlight = {
    enable = true,
  },
  textsubjects = {
    enable = true,
    keymaps = { ["."] = "textsubjects-smart" },
  },
  autotag = {
    enable = true
  }
}
