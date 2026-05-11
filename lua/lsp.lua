require('mason').setup()

require('mason-tool-installer').setup {
    ensure_installed = {
        'pyright',
        'lua-language-server',
        'debugpy',
    },
}

local servers = {
    pyright = {
        settings = {
            python = {
                analysis = {
                    autoSearchPaths = true,
                    useLibraryCodeForTypes = true,
                    diagnosticMode = 'openFilesOnly',
                },
            },
        },
    },
    lua_ls = {
        settings = {
            Lua = {
                completion = {
                    callSnippet = 'Replace',
                },
            },
        },
    },
}

require('mason-lspconfig').setup {
    automatic_installation = false,
    handlers = {
    function(server_name)
        local server = servers[server_name] or {}
        server.capabilities = require('blink.cmp').get_lsp_capabilities(server.capabilities)
        require('lspconfig')[server_name].setup(server)
		end,
	},
}


