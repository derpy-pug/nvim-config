require('dashboard').setup {
    -- config
    theme = 'hyper',
    config = {
        week_header = {
            enable = true,
        },
        shortcut = {
            { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
            {
                icon = ' ',
                icon_hl = '@variable',
                desc = 'Files',
                group = 'Label',
                action = 'Telescope find_files',
                key = 'f',
            },
            {
                desc = '󰏅 Find History',
                group = 'DiagnosticInfo',
                action = 'Telescope oldfiles',
                key = 'h',
            },
            -- {
                -- desc = '󰏣 Find Project',
                -- group = 'DiagnosticError',
                -- action = 'Telescope find_files cwd=~/Dev',
                -- key = 'p',
            -- },
            {
                desc = ' Config',
                group = 'Number',
                action = 'Telescope find_files cwd=~/.config/nvim',
                key = 'c',
            },
        },
    }
}
