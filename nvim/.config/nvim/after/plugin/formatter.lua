local util = require('formatter.util')

require('formatter').setup {
    filetype = {
        python = {
            require('formatter.filetypes.python').black,

            function()
                return {
                    exe = 'black',
                    args = { '-q', '-', '--line-length 80' },
                    stdin = true,
                }
            end
        },
        rust = {
            require('formatter.filetypes.rust').rustfmt,

            function()
                return {
                    exe = "rustfmt",
                    args = { "--edition 2021" },
                    stdin = true,
                }
            end
        },
    }
}

vim.keymap.set("n", "<leader>f", ":Format<CR>")
