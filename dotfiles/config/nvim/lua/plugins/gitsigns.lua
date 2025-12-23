return {
  'lewis6991/gitsigns.nvim',
  opts = {
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation between hunks
      map('n', ']c', function()
        if vim.api.nvim_get_option_value('diff', {}) then return ']c' end
        vim.schedule(function() gs.next_hunk() end)
        return '<Ignore>'
      end, {expr=true, desc = "Next Hunk"})

      map('n', '[c', function()
        if vim.api.nvim_get_option_value('diff', {}) then return '[c' end
        vim.schedule(function() gs.prev_hunk() end)
        return '<Ignore>'
      end, {expr=true, desc = "Prev Hunk"})

      -- Toggles
      map('n', '<F7>', gs.toggle_signs, { desc = "Toggle Git Signs" })
      map('n', '<leader>tb', gs.toggle_current_line_blame, { desc = "Toggle Git Blame" })
      map('n', '<leader>tw', gs.toggle_word_diff, { desc = "Toggle Git Word Diff" })
    end
  }
}
