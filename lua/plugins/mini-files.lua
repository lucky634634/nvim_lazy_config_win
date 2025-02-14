return {
    'echasnovski/mini.files',
    dependencies = {
        'echasnovski/mini.icons'
    },
    version = '*',
    config = function()
        require('mini.files').setup()
    end,
}
