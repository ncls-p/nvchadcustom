-- lua/plugins/molten.lua
return {
  "benlubas/molten-nvim",
  cmd = { "MoltenInit", "MoltenEvaluateOperator", "MoltenEvaluateLine", "MoltenReevaluateCell" },
  version = "^1.0.0",
  dependencies = { "3rd/image.nvim" },
  build = ":UpdateRemotePlugins",
  init = function()
    vim.g.molten_image_provider = "image.nvim"
    vim.g.molten_output_win_max_height = 20
  end,
}
