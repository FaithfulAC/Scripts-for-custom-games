pcall(function()
    game:service("Players").LocalPlayer.PlayerScripts.AntiExploitLocalScript:Destroy()
end)

local function Service(class)
    return game:GetService(class)
end

local Players = Service("Players")
local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local BackPack = Player.Backpack

local Bow = Character:FindFirstChild("Bow") or BackPack:FindFirstChild("Bow")
local Build = Character:FindFirstChild("Build") or BackPack:FindFirstChild("Build")
local Delete = Character:FindFirstChild("DeleteTool") or BackPack:FindFirstChild("DeleteTool")
local ShootRemoteEvent = Bow.Shoot.RemoteEvent

local function ActivateTool(tool)
    if Character then
        tool.Parent = Character
    end
end

local Slimes = workspace:FindFirstChild("Slimes")

if not Slimes then
    task.spawn(function()
        repeat task.wait(.1) until workspace:FindFirstChild("Slimes")
        Slimes = workspace:FindFirstChild("Slimes")
    end)
end

Player.CharacterAdded:Connect(function(char)
    Character = nil
    
    task.wait()
    Character = char
end)

local BowFunc; BowFunc = function()
    Bow = nil

    repeat task.wait() until Character and Character:FindFirstChild("Bow") or BackPack:FindFirstChild("Bow")
    Bow = Character:FindFirstChild("Bow") or BackPack:FindFirstChild("Bow")

    repeat task.wait() until Bow:FindFirstChild("Shoow") and Bow:FindFirstChild("Shoow"):FindFirstChild("RemoteEvent")
    ShootRemoteEvent = Bow:FindFirstChild("Shoow"):FindFirstChild("RemoteEvent")

    Bow.Destroying:Connect(BowFunc)
end

Bow.Destroying:Connect(BowFunc)

if Build and Delete then
    local BuildFunc; BuildFunc = function()
        Build = nil
    
        repeat task.wait() until Character and Character:FindFirstChild("Build") or BackPack:FindFirstChild("Build")
        Build = Character:FindFirstChild("Build") or BackPack:FindFirstChild("Build")
        Build.Destroying:Connect(BuildFunc)
    end

    local DeleteFunc; DeleteFunc = function()
        Delete = nil
    
        repeat task.wait() until Character and Character:FindFirstChild("DeleteTool") or BackPack:FindFirstChild("DeleteTool")
        Delete = Character:FindFirstChild("DeleteTool") or BackPack:FindFirstChild("DeleteTool")
        Delete.Destroying:Connect(DeleteFunc)
    end

    Build.Destroying:Connect(BuildFunc)
    Delete.Destroying:Connect(DeleteFunc)
else
    task.spawn(function()
        repeat task.wait() until Character and (Character:FindFirstChild("Build") or BackPack:FindFirstChild("Build")) and (Character:FindFirstChild("DeleteTool") or BackPack:FindFirstChild("DeleteTool"))
        Build = Character:FindFirstChild("Build") or BackPack:FindFirstChild("Build")
        Delete = Character:FindFirstChild("DeleteTool") or BackPack:FindFirstChild("DeleteTool")
    
        local BuildFunc; BuildFunc = function()
            Build = nil
        
            repeat task.wait() until Character and Character:FindFirstChild("Build") or BackPack:FindFirstChild("Build")
            Build = Character:FindFirstChild("Build") or BackPack:FindFirstChild("Build")
            Build.Destroying:Connect(BuildFunc)
        end
    
        local DeleteFunc; DeleteFunc = function()
            Delete = nil
        
            repeat task.wait() until Character and Character:FindFirstChild("DeleteTool") or BackPack:FindFirstChild("DeleteTool")
            Delete = Character:FindFirstChild("DeleteTool") or BackPack:FindFirstChild("DeleteTool")
            Delete.Destroying:Connect(DeleteFunc)
        end
    
        Build.Destroying:Connect(BuildFunc)
        Delete.Destroying:Connect(DeleteFunc)
    end)
end

if Slimes then
    Slimes.Destroying:Connect(function()
        Slimes = nil
    
        repeat task.wait(1) until workspace:FindFirstChild("Slimes")
        Slimes = workspace:FindFirstChild("Slimes")
    end)
else
    task.spawn(function()
        repeat task.wait(.1) until Slimes
        Slimes.Destroying:Connect(function()
            Slimes = nil
        
            repeat task.wait(1) until workspace:FindFirstChild("Slimes")
            Slimes = workspace:FindFirstChild("Slimes")
        end)
    end)
end

getgenv().GetPositionFromPart = function(part)
    return part.Position
end

getgenv().GetCFrameFromPart = function(part)
    return part.CFrame
end

getgenv().IdentifyRoot = function(slimemodel)
    return slimemodel:FindFirstChild("Inner") or slimemodel:FindFirstChild("Slime") or slimemodel:FindFirstChildWhichIsA("BasePart")
end

getgenv().skillz = {
    default = "skill0",
    fire = "skill1",
    explosion = "skill2",
    lightning = "skill3",
    freeze = "skill4",
    meteor = "skill5",
    portal = "skill6",
    plague = "skill7",
    nuke = "skill8"
}

local SelectedSkill = skillz.default

---------------------------------------------------------------------
local NoShootDelay = false

local Mouse = Player:GetMouse()
Mouse.Button1Up:Connect(function()
    if NoShootDelay then
        if ShootRemoteEvent and Bow and Bow.Parent == Character then
            ShootRemoteEvent:FireServer(Mouse.Hit.Position, SelectedSkill)
        end
    end
end)
---------------------------------------------------------------------

getgenv().SetSkill = function(thing)
    SelectedSkill = thing or skillz.default
end

getgenv().LoopUntilSafe = function()
    return (Character and Bow and Slimes) or (function()
        repeat task.wait(.1) until Character and Bow and Slimes
        return true
    end)()
end

getgenv().CheckIfSafe = function()
    return (Character and Bow)
end

getgenv().FireToSlime = function(SlimeModel)
    local args = {
        [1] = GetPositionFromPart(IdentifyRoot(SlimeModel)),
        [2] = SelectedSkill
    }

    ShootRemoteEvent:FireServer(unpack(args))
end

getgenv().GetSlimes = function()
    return Slimes:GetChildren()
end

getgenv().ClearAllSlimes = function()
    local skill = SelectedSkill

    SetSkill(skillz.nuke)
    LoopUntilSafe()
    ActivateTool(Bow)

    for i, v in pairs(GetSlimes()) do
        if v:IsA("Model") then
            FireToSlime(v)
        end
    end

    SetSkill(skill)
end

getgenv().GrantImmunity = function(player)
    task.spawn(pcall, function()
        Bow.Parent = Character
        local function Offset1()
            return Vector3.new(10, 0, 0)
        end
        local function Offset2()
            return Vector3.new(0, 0, 10)
        end

        while task.wait(.5) do
            if not player then break end
            local char = player.Character
        
            --ShootRemoteEvent:FireServer(GetPositionFromPart(IdentifyRoot(char))+Offset1(), "skill8")
            --ShootRemoteEvent:FireServer(GetPositionFromPart(IdentifyRoot(char))+Offset2(), "skill8")
            --ShootRemoteEvent:FireServer(GetPositionFromPart(IdentifyRoot(char))-Offset1(), "skill8")
            --ShootRemoteEvent:FireServer(GetPositionFromPart(IdentifyRoot(char))-Offset2(), "skill8")
            ShootRemoteEvent:FireServer(GetPositionFromPart(IdentifyRoot(char)), "skill8")
        end
    end)
end

GrantImmunity(Player)
--for i, v in pairs(game:service("Players"):GetPlayers()) do GrantImmunity(v) end
--game:service("Players").PlayerAdded:Connect(GrantImmunity)
