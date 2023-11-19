return {

    -- codeium cmp source
    {
        "nvim-cmp",
        dependencies = {
            -- codeium
            {
                "Exafunction/codeium.vim",
                config = function()
                    -- Change '<C-g>' here to any keycode you like.
                    vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
                    vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
                        { expr = true })
                    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
                        { expr = true })
                    vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
                end,
                cmd = "Codeium",
                build = ":Codeium Auth",
                opts = {},
            },
        },
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            table.insert(opts.sources, 1, {
                name = "codeium",
                group_index = 1,
                priority = 100,
            })
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        optional = true,
        event = "VeryLazy",
        opts = function(_, opts)
            table.insert(opts.sections.lualine_x, 2, require("lazyvim.util").lualine.cmp_source("codeium"))
        end,
    },
}
