return {
    'mbbill/undotree',
    cmd = "UndotreeToggle",
    config = function()
        -- Optional settings for undotree
        vim.g.undotree_WindowLayout = 3
        vim.g.undotree_SplitWidth = 40
        vim.g.undotree_SetFocusWhenToggle = 1

        -- Correct keybinding to toggle the undo tree
        vim.keymap.set("n", "<leader>tu", function()
            vim.cmd("UndotreeToggle")
        end, { noremap = true, silent = true })
    end
}
