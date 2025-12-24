return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },

    lazy = false, -- neo-tree will lazily load itself

    init = function()
      -- Open Neo-tree automatically on startup
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          -- Only open Neo-tree if we're not opening a specific file (optional)
          --if vim.fn.argc() == 0 then
          vim.cmd("Neotree show")
          --end
        end,
      })

      -- Close tab if the file is closed but neotree panel is visible
      vim.api.nvim_create_autocmd("BufEnter", {
        group = vim.api.nvim_create_augroup("NeoTreeCloseTab", { clear = true }),
        callback = function()
          local tabs = vim.api.nvim_list_tabpages()
          if #tabs > 1 then
            local wins = vim.api.nvim_tabpage_list_wins(0)
            -- If only 1 window left and it's Neo-tree, close the tab
            if #wins == 1 then
              local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(wins[1]))
              if bufname:match("neo%-tree") then
                vim.cmd("tabclose")
              end
            end
          end
        end,
      })

      -- Quit neovim if the file is closed but neotree panel is visible
      vim.api.nvim_create_autocmd("BufEnter", {
        group = vim.api.nvim_create_augroup("NeoTreeQuit", { clear = true }),
        callback = function()
          local wins = vim.api.nvim_list_wins()
          if #wins == 1 then
            local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(wins[1]))
            if bufname:match("neo%-tree") then
              vim.cmd("quit")
            end
          end
        end,
      })

      -- Open Neo-tree automatically when a NEW TAB is opened
      vim.api.nvim_create_autocmd("TabNewEntered", {
        callback = function()
          vim.cmd("Neotree show")
        end,
      })
    end,
    keys = {
      { "<F9>", "<cmd>Neotree toggle<cr>", desc = "NeoTree toggle" },
    },
    opts = {
      filesystem = {
        hijack_netrw_behavior = "open_default",
      },
    },
  },
}
