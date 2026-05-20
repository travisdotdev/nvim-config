require('mason').setup()

require('mason-tool-installer').setup {
    ensure_installed = {
        'pyright',
        'lua-language-server',
        'debugpy',
        'clangd',
    },
}

vim.lsp.config('*', {
    capabilities = require('blink.cmp').get_lsp_capabilities(),
})

vim.lsp.config('pyright', {
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = 'openFilesOnly',
            },
        },
    },
})

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            completion = { callSnippet = 'Replace' },
            diagnostics = { disable = { 'missing-fields' } },
        },
    },
})

require('mason-lspconfig').setup {
    ensure_installed = {},
}
