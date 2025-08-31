-- Loader.lua
-- Carrega scripts dinamicamente com base no game.PlaceId

local scriptUrls = {
    [96342491571673] = "StealABrainrot.lua",
    [109983668079237] = "StealABrainrot.lua"
}

local baseUrl = "https://raw.githubusercontent.com/DynaFetch/Scripts/refs/heads/main/"

local function loadScript(url)
    local success, result = pcall(function()
        return game:HttpGet(url)
    end)
    if not success then
        warn("[Loader] Falha ao baixar script de " .. url .. ": " .. result)
        return nil
    end

    success, result = pcall(loadstring, result)
    if not success then
        warn("[Loader] Falha ao executar script de " .. url .. ": " .. result)
        return nil
    end

    return result
end

local scriptUrl = scriptUrls[game.PlaceId]
if scriptUrl then
    print("[Loader] Carregando script para PlaceId " .. game.PlaceId .. ": " .. scriptUrl)
    local fullUrl = baseUrl .. scriptUrl
    local scriptFunc = loadScript(fullUrl)
    if scriptFunc then
        scriptFunc() -- Executa o script
    end
else
    warn("[Loader] Nenhum script encontrado para PlaceId " .. game.PlaceId)
    -- Opcional: adicionar um comportamento padrão
    print("[Loader] Nenhum script padrão configurado.")
end
