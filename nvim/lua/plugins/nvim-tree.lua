local g = vim.g

g.nvim_tree_width = 32
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_respect_buf_cwd = 1
g.nvim_tree_root_folder_modifier = ':~'
g.nvim_tree_symlink_arrow = ' >> '
g.nvim_tree_width_allow_resize = 1
g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 0,
  folder_arrows = 1
}
g.nvim_tree_icons = {
  default = " ",
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = " ",
    renamed = "➜",
    untracked = "★"
  },
  folder = {
    arrow_open = "- ",
    arrow_closed = "> ",
    default = "> ",
    open = "- "
  }
}

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
    dotfiles = false,
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
