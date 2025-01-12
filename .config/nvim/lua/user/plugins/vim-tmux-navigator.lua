return {
    {
        "christoomey/vim-tmux-navigator",
        config = function ()
           vim.keymap.set('n', 'C-h', ':TmuxNavigateLeft<CR>')
           vim.keymap.set('n', 'C-h', ':TmuxNavigateDown<CR>')
           vim.keymap.set('n', 'C-h', ':TmuxNavigateUp<CR>')
           vim.keymap.set('n', 'C-h', ':TmuxNavigateRight<CR>')
        end
    }
}
