-- obby run auto farm: main segment
-- run this by itself if you are putting it in autoexec, otherwise run the loader instead
if game.PlaceId ~= 5434921173 then return end
repeat task.wait() until game:GetService("Players").LocalPlayer
repeat task.wait() until game:GetService("Players").LocalPlayer.Character
repeat task.wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
local root = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
local map = workspace.CurrentMap

local function teleport()
    local httprequest = httprequest or request or http_request

    if httprequest then
        local servers = {}
        local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", game.PlaceId)})
        local suc, body = pcall(function() return game:GetService("HttpService"):JSONDecode(req.Body) end)

        if suc and body and body.data then
            for i, v in next, body.data do
                if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
                    table.insert(servers, v.id)
                end
            end
        end

        if #servers > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game:GetService("Players").LocalPlayer)
        else
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        end
    else
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end

local beginning = 9e9
local _end_ = 0
for i, v in pairs(map:GetChildren()) do
    local num = tonumber(v.Name:split("_")[2])
    if not num then continue end
    if num < beginning then beginning = num end
    if num > _end_ then _end_ = num end
end

for i = beginning, _end_ do
    local mod = map:FindFirstChild("Checkpoint_" .. tostring(i))
    if mod then
        local s,e=pcall(function() root.CFrame = mod:FindFirstChild("Checkpoint").CFrame end)
        if e then teleport() end
    end
    task.wait(.2)
end
root.CFrame = map.Goal.Goal.CFrame
teleport()
