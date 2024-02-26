local util = require("formatter.util")

require("formatter").setup({
	filetype = {
		python = {
			require("formatter.filetypes.python").black,

			function()
				return {
					exe = "black",
					args = { "-q", "-", "--line-length 80" },
					stdin = true,
				}
			end,
		},
		rust = {
			require("formatter.filetypes.rust").rustfmt,

			function()
				return {
					exe = "rustfmt",
					args = { "--edition 2021" },
					stdin = true,
				}
			end,
		},
		java = {
			require("formatter.filetypes.java").clangformat,

			function()
				return {
					exe = "clang-format",
					args = { "--style=Google", '-style="{IndentWidth: 4}"', "--assume-filename=.java" },
					stdin = true,
				}
			end,
		},
		lua = {
			require("formatter.filetypes.lua").stylua,

			function()
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},
        c = {
			require("formatter.filetypes.java").clangformat,

			function()
				return {
					exe = "clang-format",
					args = { "--style=GNU", '-style="{IndentWidth: 4}"', "--assume-filename=.c" },
					stdin = true,
				}
			end,
        },
        haskell = {
            require("formatter.filetypes.haskell").ormolu,

            function()
                return {
                    exe = "ormolu",
                    args = { "--mode inplace", },
                    stdin = true,
                }
            end,
        }
	},
})

vim.keymap.set("n", "<leader>f", ":Format<CR>")
