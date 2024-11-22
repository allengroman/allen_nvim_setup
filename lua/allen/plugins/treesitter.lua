return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { "BufReadPost", "BufNewFile" },
  dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "lua", "python", "typescript", "html", "css", "javascript", "c", "cpp"}, -- Add languages as needed
      highlight = { enable = true },
      indent = { enable = true },
      textobjects = { enable = true },
    })
  end,
}

