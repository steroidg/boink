return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
    -- Toggle Gutter Signs
    vim.keymap.set('n', '<F7>', function() require('gitsigns').toggle_signs() end, { desc = "Toggle Git Signs" })

    -- Optional: Toggle Word Diff (highlights exact words changed within a line)
    vim.keymap.set('n', '<leader>tw', function() require('gitsigns').toggle_word_diff() end, { desc = "Toggle Git Word Diff" })

    -- Optional: Toggle Line Blame (shows who edited the current line next to the cursor)
    vim.keymap.set('n', '<leader>tb', function() require('gitsigns').toggle_current_line_blame() end, { desc = "Toggle Git Blame Line" })
  end
}
