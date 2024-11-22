return {
  'nvim-treesitter/playground',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  cmd = "TSPlaygroundToggle",
  config = function()
    require('nvim-treesitter.configs').setup({
      playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether queries persist across vim sessions
      },
    })
  end,
}

