return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      -- Add your configuration options here, or leave empty for default
      options = {
        -- theme = 'gruvbox', -- Example: set a theme
        theme = 'tomorrow_night', -- Example: set a theme
        -- ... other options
      },
      -- ... other sections
    })
  end
}
