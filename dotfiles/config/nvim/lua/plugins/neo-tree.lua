return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },

    lazy = false, -- neo-tree will lazily load itself

    init = function()
      -- Open Neo-tree automatically on startup
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          -- Only open Neo-tree if we're not opening a specific file (optional)
          if vim.fn.argc() == 0 then
            vim.cmd("Neotree show")
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
