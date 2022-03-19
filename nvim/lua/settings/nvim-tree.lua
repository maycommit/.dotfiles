require "nvim-tree".setup {
	auto_close = false,
	view = {
		side = 'left',
		preserve_window_proportions = false,
	},
	hijack_directories = {
    enable = true,
    auto_open = true,
  },
}
