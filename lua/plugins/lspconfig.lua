require('lspconfig')['pyright'].setup {}
require('lspconfig')['sumneko_lua'].setup {}
require('lspconfig')['clangd'].setup {}
require('lspconfig')['eslint'].setup {
    root_dir = require('lspconfig').util.root_pattern('.js');
}

