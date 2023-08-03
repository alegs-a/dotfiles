require("alegs")
require("alegs.packer")
require("alegs.remap")
require("alegs.set")

require("lualine").setup()
require("gitsigns").setup()

vim.keymap.set("n", "<C-\\>", "") -- remove vim-tmux-navigator default mapping to allow it to be assigned to the terminal
require("toggleterm").setup({
	open_mapping = "<C-T>",
	direction = "float", -- What split to open the terminal in. Other options: vertical, horizontal, tab
	float_opts = {
		border = "double",
	},
})

vim.cmd("colorscheme gruvbox")
