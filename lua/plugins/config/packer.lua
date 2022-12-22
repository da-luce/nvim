return require('packer').setup {
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
}
