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
    'coder/claudecode.nvim',
    dependencies = { 'folke/snacks.nvim' },
    config = true,
    keys = {
      { '<leader>a', nil, desc = 'AI/Claude Code' },
      { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude' },
      { '<leader>af', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus Claude' },
      { '<leader>ar', '<cmd>ClaudeCode --resume<cr>', desc = 'Resume Claude' },
      { '<leader>aC', '<cmd>ClaudeCode --continue<cr>', desc = 'Continue Claude' },
      { '<leader>am', '<cmd>ClaudeCodeSelectModel<cr>', desc = 'Select Claude model' },
      { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add current buffer' },
      { '<leader>as', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send to Claude' },
      {
        '<leader>as',
        '<cmd>ClaudeCodeTreeAdd<cr>',
        desc = 'Add file',
        ft = { 'NvimTree', 'neo-tree', 'oil' },
      },
      -- Diff management
      { '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', desc = 'Accept diff' },
      { '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', desc = 'Deny diff' },
    },
  },
}
