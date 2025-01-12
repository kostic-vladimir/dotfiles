return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
          local configs = require("nvim-treesitter.configs")

          configs.setup({
                ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "elixir", "heex"},
                sync_install = false,
                auto_install = false,
                ignore_install = {},
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    }
}
