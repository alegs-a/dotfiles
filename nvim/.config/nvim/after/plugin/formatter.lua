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
        }
    }
}
