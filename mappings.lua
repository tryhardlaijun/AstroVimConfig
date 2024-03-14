return {
  n = { -- Normal mode mappings
    ["<space>"] = { "V", desc = "Enter visual line mode" },
    ["<space><space>"] = { "ggVG", desc = "Select all text" },
    [";"] = {":", desc = "; -> :"},
    ["<Tab>"] = { ":UndotreeToggle<CR>", desc = "Toggle UndoTree" },
  },

  v = { -- Normal mode mappings
    [";"] = {":", desc = "; -> :"},
    ["<space><space>"] = { "ggVG", desc = "Select all text" },

  },
}

