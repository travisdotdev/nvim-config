require('telescope').setup({})
require('keymaps')
require('gitsigns').setup()
require('which-key').setup({})
require('nvim-autopairs').setup({})
require('toggleterm').setup({
    size = 15,
    open_mapping = '<leader>tf',
    direction = 'horizontal',
	shade_terminals = false,
})
require('lualine').setup({
	options = {
		theme = 'tokyonight',
		icons_enabled = true,
	}
})
require('neo-tree').setup({
	filesystem = {
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
		},
		window = {
			mappings = {
				['\\'] = 'close_window',
			},
		},
	},
})
require('snacks').setup({
	bigfile = { enabled = true },
	dashboard = { enabled = true },
	notifier = { enabled = true },
	quickfile = { enabled = true },
	scroll = { enabled = true },
	statuscolumn = { enabled = true },
	words = { enabed = true },
})

