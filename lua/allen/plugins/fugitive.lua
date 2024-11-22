return {
    'tpope/vim-fugitive',
    cmd = { "Git", "Gdiffsplit", "Gcommit", "Gpush", "Gpull" },
    config = function()
        -- Optional: Set up keybindings for common Git commands
        vim.keymap.set("n", "<leader>gs", ":Git<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>gc", ":Gcommit<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>gp", ":Gpush<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>gl", ":Glog<CR>", { noremap = true, silent = true })
    end
}
