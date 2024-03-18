-- First, define the functions for insert mode actions
local function acceptCodeium()
  return vim.fn["codeium#Accept"]()
end

local function cycleCompletionsForward()
  return vim.fn["codeium#CycleCompletions"](1)
end

local function cycleCompletionsBackward()
  return vim.fn["codeium#CycleCompletions"](-1)
end

local function clearCodeium()
  return vim.fn["codeium#Clear"]()
end

-- Define a function for the normal mode toggle action
local function toggleCodeium()
  if vim.g.codeium_enabled == true then
    vim.cmd "CodeiumDisable"
  else
    vim.cmd "CodeiumEnable"
  end
end
return {
  n = { -- Normal mode mappings
    ["<space>"] = { "V", desc = "Enter visual line mode" },
    ["<space><space>"] = { "ggVG", desc = "Select all text" },
    [";"] = {":", desc = "; -> :"},
  },

  v = { -- Normal mode mappings
    [";"] = {":", desc = "; -> :"},
    ["<space><space>"] = { "ggVG", desc = "Select all text" },
  },
  i = { -- Insert mode mappings
    ["<Right>"] = {acceptCodeium, expr = true, desc = "Accept Codeium suggestion"},
    ["<C-Space>"] = {toggleCodeium, expr = true, desc = "Toggle Codeium"},
    ["<Up>"] = {cycleCompletionsForward, expr = true, desc = "Cycle Codeium completions forward"},
    ["<Down>"] = {cycleCompletionsBackward, expr = true, desc = "Cycle Codeium completions backward"},
    ["<Left>"] = {clearCodeium, expr = true, desc = "Clear Codeium suggestions"},
  },
}

