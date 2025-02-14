return {
    'echasnovski/mini.files',
    dependencies = {
        'echasnovski/mini.icons'
    },
    version = false,
    config = function()
        require('mini.files').setup()
    end,
}
