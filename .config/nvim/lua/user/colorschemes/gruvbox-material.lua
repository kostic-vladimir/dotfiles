return {
    {
        "sainnhe/gruvbox-material",
        name = "gruvbox-material",
        config = function()
            -- Optional: Set gruvbox-material specific settings
            vim.g.gruvbox_material_background = "hard"  -- Choose between 'soft', 'medium', 'hard'
            vim.g.gruvbox_material_palette = "material"       -- Choose color palette
            vim.g.gruvbox_material_borders = 1           -- Enable borders
            vim.g.gruvbox_material_ui_contrast = "high"  -- Adjust UI contrast

            vim.cmd.colorscheme("gruvbox-material")

            -- Disable background color so terminal background is used
            vim.cmd("hi normal guibg=none ctermbg=none")  -- make normal background transparent
            vim.cmd("hi normalnc guibg=none ctermbg=none")  -- make unfocused background transparent
            vim.cmd("hi statusline guibg=none ctermbg=none")  -- optional: transparent statusline
            vim.cmd("hi tabline guibg=none ctermbg=none")  -- optional: transparent tabline

            -- if you use a floating window, you can apply the same for floating windows:
            vim.cmd("hi floatborder guibg=none ctermbg=none")
            vim.cmd('hi normal ctermbg=none guibg=none')
            vim.cmd('hi nontext ctermbg=none guibg=none')
            vim.cmd("hi Pmenu guibg=NONE ctermbg=NONE")  -- Transparent background for the popup menu
            -- vim.cmd("hi PmenuSel guibg=NONE ctermbg=NONE")
        end
    }
}
