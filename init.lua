-- local actions = require "telescope.actions"

-- theme settings
-- local schemes = { "gruvbox-material", "everforest", "nordfox", "duskfox" }
local config = {

  -- disable default plugins
  enabled = {
    bufferline = true,
    neo_tree = true,
    lualine = true,
    gitsigns = true,
    colorizer = true,
    toggle_term = true,
    comment = true,
    symbols_outline = true,
    indent_blankline = true,
    dashboard = true,
    which_key = true,
    neoscroll = true,
    ts_rainbow = true,
    ts_autotag = true,
  },

  -- disable astronvim ui feature
  ui = { nui_input = true, telescope_select = true },

  -- diagnostics configuration (for vim.diagnostics.config({}))
  diagnostics = { virtual_text = true, underline = true },
}

return config
