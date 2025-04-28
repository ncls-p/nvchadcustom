---@diagnostic disable: undefined-global
-- core/providers.lua
-- Enable and load providers

local enable_providers = {
    "python3_provider",
    -- add more providers here
}

for _, plugin in ipairs(enable_providers) do
    vim.g["loaded_" .. plugin] = nil
    vim.cmd("runtime " .. plugin)
end
