--// Variables
local scriptUrls = {
    [2753915549] = "bloxfruits.lua",
    [109983668079237] = "StealABrainrot.lua"
}

local scriptUrl = scriptUrls[game.PlaceId]
if scriptUrl then
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iubauhqhuiauhiszivjou1i89781iuwnuk8p/-/refs/heads/main/" .. scriptUrl))()
    end)
    if not success then
        warn("[Vitor Ugly] Failed to load script:", errorMsg)
    end
else
    print("[Vitor Ugly] Game ID not found in script URLs table.")
end
