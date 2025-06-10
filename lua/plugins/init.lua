-- lua/plugins/init.lua
-- Import individual plugin specifications
return {
  require "plugins.treesitter",
  require "plugins.telescope",
  require "plugins.completion",
  require "plugins.neo-tree",
  require "plugins.gitsigns",
  require "plugins.conform",
  require "plugins.lspconfig", 
  require "plugins.llm",
  require "plugins.molten",
  require "plugins.image",
  require "plugins.claude-code",
}
