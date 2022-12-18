require('lspconfig')['pyright'].setup {}

require('lspconfig')['sumneko_lua'].setup {
    settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"},
      },
      telemetry = { enable = false }
    },
    on_attach = function(client, bufnr)
        require("nvim-navic").attach(client, bufnr)
    end
  },
}
require('lspconfig')['clangd'].setup {}

require('lspconfig')['eslint'].setup {
    root_dir = require('lspconfig').util.root_pattern('.js');
}

require('lspconfig').lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}
