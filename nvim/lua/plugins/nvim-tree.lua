require('nvim-tree').setup {
  open_on_setup = false,
  update_cwd = true,
  view = {
    width = 32,
    hide_root_folder = true,
    side = "left",
    preserve_window_proportions = true,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
  },
  actions = {
    change_dir = { enable = false },
    open_file = {
      window_picker = { enable = false },
    },
  },
  filters = {
    dotfiles = true,
    custom = { '.git', 'node_modules', '.cache', '.bin' },
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "L ",
        edge = "| ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
    },
  },
}
