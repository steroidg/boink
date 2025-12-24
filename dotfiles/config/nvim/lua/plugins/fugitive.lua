return {
  {
    "tpope/vim-fugitive",
    config = function()
      -- Toggle Git Status (The main Fugitive interface)
      vim.keymap.set("n", "<leader>g", function()
        if vim.bo.filetype == "fugitive" then
          vim.cmd("close")
        else
          vim.cmd("Git")
        end
      end, { desc = "Toggle Fugitive Status" })

      -- Git Commit
      vim.keymap.set("n", "<leader>gm", "<cmd>Git commit<cr>", { desc = "Git Commit" })

      -- Git Push
      vim.keymap.set("n", "<leader>gp", "<cmd>Git push<cr>", { desc = "Git Push" })

      -- Toggle Git Diff Split (Vertical)
      vim.keymap.set("n", "<leader>gd", "<cmd>Gdiffsplit!<cr>", { desc = "Git Diff Split" })
    end,
  },
}
