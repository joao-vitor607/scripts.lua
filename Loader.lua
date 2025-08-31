print("Bem-vindo ao Loader!")
-- Variables
local scriptUrls = {
    [96342491571673] = "StealABrainrot.lua",
    [109983668079237] = "StealABrainrot.lua"
}

local baseUrl = ""

local scriptUrl = scriptUrls[game.PlaceId]
if scriptUrl then
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet(baseUrl .. scriptUrl))()
    end)
    if not success then
        warn("[devil Ugly] Failed to load script:", errorMsg)
    end
else
    -- fallback: always load the Loader if the ID is not in the list
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet(baseUrl .. "Loader.lua"))()
    end)
    if not success then
        warn("[vitor Ugly] Failed to load Loader:", errorMsg)
    end
end
