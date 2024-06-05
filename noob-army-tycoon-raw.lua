-- beta, there will be no gui until functions are sorted out

repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local PlayerScripts = LocalPlayer.PlayerScripts
local PlayerGui = LocalPlayer.PlayerGui

local Map = workspace:FindFirstChild("Map") or workspace:WaitForChild("Map")
local Points = Map.Points
local ObbyLand = Map.ObbyLand
local Flowers = Map.Flowers
local Treasures = Map.Treasures
local NPCs = workspace:FindFirstChild("NPCs")
local Remotes = ReplicatedStorage:FindFirstChild("Remotes")

-- bait remotes / likely only usable for admins
if Remotes:FindFirstChild("Commands") then
    Remotes.Commands:Destroy()
end

local MusicFolder = ReplicatedStorage:FindFirstChild("Musics")

local MyTycoon do
    for i, v in pairs(workspace:FindFirstChild("Tycoons"):GetChildren()) do
        if v.Owner.Value == LocalPlayer then
            MyTycoon = v
            break
        end
    end
end

local function GetMyTroops()
    local tbl = {}

    for i, v in pairs(NPCs:GetChildren()) do
        if v.Tycoon.Value == MyTycoon then
            table.insert(tbl, v)
        end
    end

    return tbl
end

local function GetInviteFriendBadge()
    local Target = Remotes:FindFirstChild("Claiminviteafriendbadge")
    Target:FireServer()
end

local function ToObbyLand()
    local Target = Remotes:FindFirstChild("TaxiBoat")
    Target:InvokeServer("ObbyLand")
end

local function AntiWaterKill()
    local BadStuff = {}

    for i, v in pairs(Map:GetChildren()) do
        if v:IsA("Part") and (v.Name == "Rock" or v.Name == "Water") then
            table.insert(BadStuff, v)
        end
    end

    for i, part in pairs(BadStuff) do
        local Replacement = Instance.fromExisting(part)
        Replacement.Parent = Map
        Replacement.Position += Vector3.new(0, 1, 0)
        Replacement.Color = Color3.fromRGB(0, 255, 0)
        Replacement.CanCollide = true
        part:Destroy()
    end
end

local function RemoveDirtDigPart()
    local Dirt = Map:FindFirstChild("Ground")
    if not Dirt then return end

    Dirt:Destroy()
end

local function AntiLavaKill()
    for i, v in pairs(Map:GetChildren()) do
        if v.Name == "Model" and v:FindFirstChildOfClass("Part") then
            for _, v2 in pairs(v:GetChildren()) do
                if v2:IsA("BasePart") and v2.BrickColor == BrickColor.new("New Yeller") then
                    local Replacement = Instance.fromExisting(v2)
                    Replacement.Parent = v
                    Replacement.CanCollide = true
                    Replacement.Transparency = 0.5
                    -- just in case
                    Replacement.Position -= Vector3.new(0, 5, 0)

                    task.spawn(function()
                        while task.wait() do
                            Replacement.Color = Color3.fromHSV(tick()%5/5, 1, 1)
                        end
                    end)

                    v2:Destroy()
                    break
                end
            end
        end
    end
end

local function SetMotionBlur(bool)
    if not PlayerScripts:FindFirstChild("MotionBlur") then return end
    PlayerScripts.MotionBlur.Enabled = bool
end

if MyTycoon.Models:FindFirstChild("Computer") then
    print(MyTycoon.Models.Computer.Model:FindFirstChild("ProximityPrompt", true))
end
