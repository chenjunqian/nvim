return {
    'echasnovski/mini.map',
    keys = {
        { '<Leader>lm', '<cmd>lua MiniMap.toggle()<CR>', desc = 'Mini map' },
    },
    opts = function()
        local minimap = require('mini.map')
        return {
            integrations = {
                minimap.gen_integration.builtin_search(),
                minimap.gen_integration.diagnostic({
                    error = 'DiagnosticFloatingError',
                    warn  = 'DiagnosticFloatingWarn',
                    info  = 'DiagnosticFloatingInfo',
                    hint  = 'DiagnosticFloatingHint',
                }),
                minimap.gen_integration.gitsigns(),
            },
            window = {
                side = 'right',
                width = 10, -- set to 1 for a pure scrollbar :)
                winblend = 15,
                show_integration_count = false,
            },
            symbols = {
                encode = minimap.gen_encode_symbols.dot('4x2'),
            },
        }
    end,
}
