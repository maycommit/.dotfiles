vim.opt.list = true

require('indent_blankline').setup {
  show_current_context = true,
  show_current_context_start = true,
  show_end_of_line = true,
  show_first_indent_level = false,
  filetype_exclude = {
    'help',
    'git',
    'markdown',
    'text',
    'terminal',
    'lspinfo',
    'packer',
  },
  buftype_exclude = {
    'terminal',
    'nofile',
  },
}
