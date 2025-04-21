vim.g.mapleader = ' '
vim.g.maplocalleader = ','

vim.g.have_nerd_font = true

require 'options'
require 'keymaps'
require 'autocommands'
require 'lazy-bootstrap'

require('lazy').setup({
  'tpope/vim-sleuth',
  require 'kickstart.plugins.treesitter',
  require 'kickstart.plugins.lspconfig',
  require 'kickstart.plugins.telescope',
  require 'kickstart.plugins.conform',
  require 'kickstart.plugins.blink-cmp',
  require 'kickstart.plugins.mini',
  require 'kickstart.plugins.indent_line',
  require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.gitsigns',
  require 'kickstart.plugins.tokyonight',

  require 'custom.plugins.noice',
  require 'custom.plugins.bufferline',
  require 'custom.plugins.neotab',
  require 'custom.plugins.oil',
  require 'custom.plugins.toggleterm',
  require 'custom.plugins.dashboard-nvim',
  require 'custom.plugins.leap',
  {
    'mustache/vim-mustache-handlebars',
    ft = { 'njk', 'nunjucks' },
  },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
