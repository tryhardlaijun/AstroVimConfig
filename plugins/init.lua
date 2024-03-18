-- Add plugins, the packer syntax without the "use"
return {
  {
    "mbbill/undotree",
    lazy = false,

  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
   {
  "Exafunction/codeium.vim",
  event = "User AstroFile",
} 
}
