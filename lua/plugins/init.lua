return {
  {
    'folke/flash.nvim',
    keys = {
      -- disable the default flash keymap
      { 's', mode = { 'n', 'x', 'o' }, false },
      {
        'r',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').jump()
        end,
        desc = 'Flash',
      },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 0,
        ignore_whitespace = false,
        virt_text_priority = 100,
        use_focus = true,
      },
    },
  },
  {
    'linrongbin16/gitlinker.nvim',
    opts = {
      config = function()
        require('gitlinker').setup()
      end,
    },
    keys = {
      {
        '<leader>gy',
        '<cmd>GitLink<cr>',
        silent = true,
        noremap = true,
        desc = 'Copy git permlink to clipboard',
        mode = { 'n', 'v' },
      },
      {
        '<leader>gY',
        '<cmd>GitLink!<cr>',
        silent = true,
        noremap = true,
        desc = 'Open git permlink in browser',
        mode = { 'n', 'v' },
      },
      {
        '<leader>gb',
        '<cmd>GitLink blame<cr>',
        silent = true,
        noremap = true,
        desc = 'Copy git blame link to clipboard',
        mode = { 'n', 'v' },
      },
      {
        '<leader>gB',
        '<cmd>GitLink! blame<cr>',
        silent = true,
        noremap = true,
        desc = 'Open git blame link in browser',
        mode = { 'n', 'v' },
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    'sindrets/diffview.nvim',
  },
  {
    'swaits/zellij-nav.nvim',
    lazy = true,
    event = 'VeryLazy',
    keys = {
      { '<c-h>', '<cmd>ZellijNavigateLeftTab<cr>', { silent = true, desc = 'navigate left or tab' } },
      { '<c-j>', '<cmd>ZellijNavigateDown<cr>', { silent = true, desc = 'navigate down' } },
      { '<c-k>', '<cmd>ZellijNavigateUp<cr>', { silent = true, desc = 'navigate up' } },
      { '<c-l>', '<cmd>ZellijNavigateRightTab<cr>', { silent = true, desc = 'navigate right or tab' } },
    },
    opts = {},
  },
}
