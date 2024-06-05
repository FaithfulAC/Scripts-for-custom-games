-- beta, there will be no gui until functions are sorted out

repeat task.wait() until game:IsLoaded()

-- ty reddit (https://www.reddit.com/r/ROBLOXExploiting/comments/tozlok/manipluating_proximity_prompts/)
local fireproximityprompt = function(Obj, Amount)
    if Obj.ClassName == "ProximityPrompt" then
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration

        for i = 1, Amount do
            Obj:InputHoldBegin()
            if not Skip then
                task.wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end

        Obj.HoldDuration = PromptTime
    else
        error("userdata<ProximityPrompt> expected", 0)
    end
end

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local leaderstats = LocalPlayer:WaitForChild("leaderstats")
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
        if v:FindFirstChild("Tycoon") and v.Tycoon.Value == MyTycoon then
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

local function ToMyTycoon()
    -- just in case the character is somewhere else
    local Target = Remotes:FindFirstChild("TaxiBoat")
    Target:InvokeServer(LocalPlayer.Name)

    local Character = LocalPlayer.Character
    local RootPart = Character:WaitForChild("HumanoidRootPart")
    local Spawn do
        repeat
            Spawn = MyTycoon:FindFirstChild("FalseSpawn", true)
            task.wait()
        until Spawn
    end

    repeat
        RootPart.CFrame = Spawn.CFrame * CFrame.new(0, 3, 0)
        task.wait()
    until math.abs(RootPart.Position.Magnitude - Spawn.Position.Magnitude) < 10
end

local function RespawnArmy()
    local Target = Remotes:FindFirstChild("RespawnArmy")
    Target:FireServer()
end

local function GetOwnershipOfArmy()
    if not (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then return end
    local Root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

    for i, v in pairs(GetMyTroops()) do
        if not v:FindFirstChild("HumanoidRootPart") then continue end
        Root.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 2, 0)
        Root.Velocity = Vector3.zero
        task.wait(.01)
    end
end

if AutoFarm1 == nil or AutoFarm2 == nil then
    getgenv().AutoFarm1, getgenv().AutoFarm2 = false, false
end

local function SetAutoFarm1(bool)
    if not MyTycoon.Models:FindFirstChild("Computer") then
        return
    end

    local pp = MyTycoon.Models.Computer.Model:FindFirstChild("ProximityPrompt", true)
    local Character = LocalPlayer.Character
    local Root = Character:FindFirstChild("HumanoidRootPart")

    getgenv().AutoFarm1 = bool

    while getgenv().AutoFarm1 do
        pcall(function()
            Root.CFrame = pp.Parent.CFrame * CFrame.new(0, 3, 0)
            fireproximityprompt(pp)
        end)
    end
end

local function SetAutoFarm2(bool)
    getgenv().AutoFarm2 = bool

    if bool then
        ToObbyLand()
        repeat task.wait() until ObbyLand:FindFirstChild("Teleporters")
        local TheBigBoy = ObbyLand.Teleporters:WaitForChild("11")
        local pp = TheBigBoy:FindFirstChild("ProximityPrompt")

        local TheBigBoy2 = ObbyLand.Finish:WaitForChild("11")
        local pp2 = TheBigBoy2:FindFirstChild("ProximityPrompt")

        local Character = LocalPlayer.Character
        local Root = Character:WaitForChild("HumanoidRootPart")

        while getgenv().AutoFarm2 do
            Root.CFrame = TheBigBoy.CFrame * CFrame.new(0, 0, 2)

            task.wait(.1)
            if not getgenv().AutoFarm2 then break end
            fireproximityprompt(pp)

            task.wait(6)
            if not getgenv().AutoFarm2 then break end
            Root.CFrame = TheBigBoy2.CFrame * CFrame.new(0, 3, 0)

            task.wait(.1)
            if not getgenv().AutoFarm2 then break end
            fireproximityprompt(pp2)

            task.wait(.1)
        end
    else
        ToMyTycoon()
    end
end

getgenv().LoopAutoBuy = false

local function AutoBuyButtons(bool)
    local Models = MyTycoon:FindFirstChild("Models")
    local Character = LocalPlayer.Character
    local Root = Character:WaitForChild("HumanoidRootPart")
    local TotalCash = leaderstats.Money.Value
    local TotalResearch = leaderstats["Research Points"].Value

    local main = function()
        for i, v in pairs(Models:GetDescendants()) do
            if v.ClassName == "MeshPart" and v.Name == "Button" and v.Transparency == 0 then
                local HostModel = v.Parent
                local Price, Bought = HostModel.Stats.Price.Value, HostModel.Stats.Buy.Value
                local RPoints = HostModel.Stats:FindFirstChild("Research")
                if RPoints then RPoints = RPoints.Value end

                local MoneyOnly = {
                    BrickColor.new("Lime green")
                }
                local MoneyAndResearch = {
                    BrickColor.new("Cyan"),
                    BrickColor.new("Toothpaste"),
                    BrickColor.new("Bright bluish green"),
                    BrickColor.new("Teal")
                }

                if (not Bought) and ((
                    table.find(MoneyOnly, v.BrickColor) and Price <= TotalCash
                ) or (
                    table.find(MoneyAndResearch, v.BrickColor) and (Price <= TotalCash and RPoints <= TotalResearch)
                )) then
                    Root.CFrame = v.CFrame * CFrame.new(0, 3, 0)
                    task.wait(.2)
                    fireproximityprompt(v:FindFirstChild("ProximityPrompt"))
                    task.wait(.05)
                    TotalCash = leaderstats.Money.Value
                    TotalResearch = leaderstats["Research Points"].Value
                end
            end
        end
    end

    -- convert to bool
    getgenv().LoopAutoBuy = not (not bool)

    if bool then
        while getgenv().LoopAutoBuy and task.wait(1) do
            main()
        end
    else
        main()
    end
end

local DefaultHighlight = Instance.new("Highlight")
DefaultHighlight.Name = "NAT_SHOW_AVAILABLE"
DefaultHighlight.FillColor = Color3.fromRGB(10, 255, 10)
DefaultHighlight.FillTransparency = 0.3
DefaultHighlight.OutlineTransparency = 0.7

local function ShowBuyableButtons(bool)
    local Models = MyTycoon:FindFirstChild("Models")
    local Character = LocalPlayer.Character
    local Root = Character:WaitForChild("HumanoidRootPart")
    local TotalCash = leaderstats.Money.Value
    local TotalResearch = leaderstats["Research Points"].Value

    if bool then
        for i, v in pairs(Models:GetDescendants()) do
            if v.ClassName == "MeshPart" and v.Name == "Button" and v.Transparency == 0 then
                local HostModel = v.Parent
                local Price, Bought = HostModel.Stats.Price.Value, HostModel.Stats.Buy.Value
                local RPoints = HostModel.Stats:FindFirstChild("Research")
                if RPoints then RPoints = RPoints.Value end

                if (not Bought) and Price <= TotalCash and ((RPoints and RPoints <= TotalResearch) or true) then
                    Instance.fromExisting(DefaultHighlight).Parent = v
                end
            end
        end
    else
        for i, v in pairs(Models:GetDescendants()) do
            if v.Name == "NAT_SHOW_AVAILABLE" and v:IsA("Highlight") then
                v:Destroy()
            end
        end
    end
end
ShowBuyableButtons(false)

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
