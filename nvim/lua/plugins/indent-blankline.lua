require('indent_blankline').setup {
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
