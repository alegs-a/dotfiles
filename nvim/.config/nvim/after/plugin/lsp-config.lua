require("lspconfig").pyright.setup({})
require("lspconfig").rust_analyzer.setup({})
require("lspconfig").jdtls.setup({})
require("lspconfig").texlab.setup({})
require("lspconfig").r_language_server.setup({})
require("lspconfig").tinymist.setup({})
require("lspconfig").clangd.setup({})
-- require("lspconfig").hls.setup({
-- 	filetypes = { "haskell", "lhaskell", "cabal" },
-- }) -- Haskell Language Server

-- Global mappings
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

vim.keymap.set("n", "gD", vim.lsp.buf.type_definition)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)

vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
