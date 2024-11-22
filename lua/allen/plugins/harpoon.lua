return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon').setup()

  local mark = require("harpoon.mark")
  local ui = require("harpoon.ui")

  local mark = require("harpoon.mark")
  local ui = require("harpoon.ui")

  -- Keybindings to add files and open the Harpoon menu
  vim.keymap.set("n", "<leader>a", mark.add_file)         -- Mark the current file
  vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)      -- Toggle the Harpoon menu

  -- Keybindings to navigate between marked files
  vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
  vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
  vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)

  end,
}

