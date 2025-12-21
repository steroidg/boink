return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true, -- This is the magic line
      term_colors = true,
      integrations = {
        gitsigns = true, -- Support for the modified lines we discussed
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "catppuccin",
        },
      },
    })

    -- setup must be called before loading
    vim.cmd.colorscheme("catppuccin-mocha") -- Options: latte, frappe, macchiato, mocha
  end,
}
