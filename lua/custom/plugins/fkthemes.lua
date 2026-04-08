---@module 'lazy'
---@type LazySpec

return {
  {
    'flashcodes-themayankjha/fkthemes.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'nvim-telescope/telescope.nvim',
      -- Add your themes here
    },
    config = function()
      local all_themes = vim.fn.getcompletion('', 'color')

      table.sort(all_themes)

      require('fkthemes').setup {
        themes = all_themes,
        -- themes = { 'tokyonight', 'catppuccin', 'gruvbox' },
        default_theme = 'midnight',
        transparent_background = false,
      }
    end,
  },
}
