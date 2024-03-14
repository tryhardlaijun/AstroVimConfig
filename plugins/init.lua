-- Add plugins, the packer syntax without the "use"
return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
}
