return {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    tag = '0.1.8',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'BurntSushi/ripgrep',
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            -- Run when the plugin is installed/updated.
            build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
        },
    },
    config = function()
        -- Set Telescope keymaps
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>fn', function ()
            builtin.find_files{ cwd = vim.fn.stdpath('config') }
        end)
        vim.keymap.set('n', '<leader>ff', builtin.find_files)
        vim.keymap.set('n', '<leader>fg', builtin.live_grep)
        vim.keymap.set('n', '<leader>fb', builtin.buffers)
        vim.keymap.set('n', '<leader>fh', builtin.help_tags)

        -- Apply transparency to Telescope's results and preview windows
        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })

        require('telescope').load_extension('fzf')
    end
}
