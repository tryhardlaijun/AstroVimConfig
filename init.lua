-- local actions = require "telescope.actions"

-- theme settings
-- local schemes = { "gruvbox-material", "everforest", "nordfox", "duskfox" }
local config = {

  -- set colorscheme
  -- colorscheme = schemes[math.random(1, 4)],
  -- colorscheme = "duskfox",
  -- colorscheme = "everforest",
  -- colorscheme = "sonokai",
  -- colorscheme = "default_theme",

  -- default theme configuration
  default_theme = {
    diagnostics_style = { italic = true },
    -- modify the color table
    colors = { fg = "#abb2bf" },
    -- modify the highlight groups
    highlights = function(highlights)
      local c = require "default_theme.colors"

      highlights.normal = { fg = c.fg, bg = c.bg }
      return highlights
    end,
  },

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

  -- modify which-key registration
  -- ["which-key"] = {
  -- add bindings to the normal mode <leader> mappings
  -- register_n_leader = {
  -- ["n"] = { "<cmd>tabnew<cr>", "new buffer" },
  --   },
  -- },

  -- diagnostics configuration (for vim.diagnostics.config({}))
  diagnostics = { virtual_text = true, underline = true },
}

return config
