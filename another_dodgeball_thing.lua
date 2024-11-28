local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = LocalPlayer or Players.LocalPlayer
local Connection = game:GetService("ReplicatedStorage"):WaitForChild("Connection")

local function GetMagnitudeDifference(p1, p2)
    local mag1, mag2 = p1.Position.Magnitude, p2.Position.Magnitude
    return math.abs(mag1 - mag2)
end

local function Reset()
    pcall(function() LocalPlayer.Character.Humanoid.Health = 0 end)
    return LocalPlayer.CharacterAdded:Wait()
end

local function IsInGame(plr)
    local char = (plr or LocalPlayer).Character
    if not (char and char:FindFirstChildWhichIsA("Humanoid")) or char:FindFirstChildWhichIsA("Humanoid").Health == 0 then return false end
    return char:FindFirstChild("EnemyArrow") ~= nil
end

local function IsEnemy(plr)
    return IsInGame(plr) and plr.Team ~= LocalPlayer.Team
end

local function GetAllies()
    local tbl = {}
    
    for i, v in pairs(Players:GetPlayers()) do
        if (not IsEnemy(v)) and IsInGame(v) then
            table.insert(tbl, v)
        end
    end
    
    return tbl
end

local function GetEnemies()
    local tbl = {}
    
    for i, v in pairs(Players:GetPlayers()) do
        if IsEnemy(v) then
            table.insert(tbl, v)
        end
    end
    
    return tbl
end

local function GetRandomAlly()
    return GetAllies()[math.random(#GetAllies() ~= 0 and #GetAllies() or 1)]
end

local function GetRandomEnemy()
    return GetEnemies()[math.random(#GetEnemies() ~= 0 and #GetEnemies() or 1)]
end

local function Kill(plr)
    if not plr then return warn("No Player") end
    if not IsInGame(LocalPlayer) then return warn("LocalPlayer is not in the game") end
    if not IsEnemy(plr) then return warn("Player to kill is not an enemy or not in the game") end
    
    repeat
        if math.random(5) == 5 then
            local dub = 0
            local root = LocalPlayer.Character.HumanoidRootPart
            
            for i, v in pairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and v.Name == "Handle" and v.Color == Color3.fromRGB(196, 40, 28) then
                    dub += 1
                    if dub > 9 then continue end
                    pcall(firetouchinterest, root, v, 0)
                    task.wait()
                end
            end
        end
        
        pcall(function()
            local direction = plr.Character.Humanoid.MoveDirection
            local startingPos = plr.Character.HumanoidRootPart.Position
            
            Connection:InvokeServer(1, LocalPlayer.Character.Dodgeball.Handle.Ref.Value, direction, startingPos)
            Connection:InvokeServer(28, LocalPlayer.Character.Dodgeball)
        end)

        task.wait()
    until (not plr.Character) or plr.Character:FindFirstChildWhichIsA("Humanoid").Health == 0 or not IsInGame(plr)
end

local function Protect(plr)
    if not plr then return warn("No Player") end
    if IsInGame(LocalPlayer) then return warn("LocalPlayer must not be in the game for Protect to work") end
    if not IsInGame(plr) then return warn("Player to protect is not in the game") end
    if IsEnemy(plr) then return warn("Player to protect is an enemy, so protect will not work as intended") end
    
    local conn = RunService.Stepped:Connect(function()
        pcall(function()
            for i, v in pairs(LocalPlayer.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end)
    end)
    
    while IsInGame(plr) and task.wait() do
        pcall(function()
            for i, v in pairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and v.Name == "Handle" and v.Color == Color3.fromRGB(242, 243, 243) and GetMagnitudeDifference(v, plr.Character.HumanoidRootPart) < 20 then
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, v, 0)
                end
            end
            workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
            LocalPlayer.Character.HumanoidRootPart.CFrame =
                plr.Character.HumanoidRootPart.CFrame
                +
                Vector3.new((math.random(2)==2 and 7 or -7), 0, (math.random(2)==2 and 7 or -7))
        end)
    end
    
    workspace.CurrentCamera.CameraSubject = LocalPlayer.Character.Humanoid
    conn:Disconnect()
    conn = nil
end

local function ProtectAllies()
    if IsInGame(LocalPlayer) then return warn("LocalPlayer must not be in the game for ProtectAllies to work") end
    
    while #GetAllies() > 0 and task.wait() do
        pcall(function()
            for i, v in pairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and v.Name == "Handle" and v.Color == Color3.fromRGB(242, 243, 243) then
                    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, v, 0)
                end
            end
        end)
    end
end

local function SpawnBalls(plr, duration)
    duration = duration or 10
    if not plr then return warn("No Player to SpawnBalls") end
    if not IsInGame(LocalPlayer) or ((not LocalPlayer.Character) or not LocalPlayer.Character:FindFirstChild("Humanoid")) then return warn("LocalPlayer must be in the game for SpawnBalls to work") end
    
    local org = tick()
    repeat
        if math.random(2) == 2 then
            local dub = 0
            local root = LocalPlayer.Character.HumanoidRootPart
            
            for i, v in pairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and v.Name == "Handle" and v.Color == Color3.fromRGB(196, 40, 28) then
                    dub += 1
                    if dub > 9 then continue end
                    pcall(firetouchinterest, root, v, 0)
                end
            end
        end
        
        pcall(function()
            local startingPos = plr.Character.HumanoidRootPart.Position+Vector3.new(0, 12, 0)
            
            Connection:InvokeServer(1, LocalPlayer.Character.Dodgeball.Handle.Ref.Value, Vector3.new(math.random(-1,1),-1,math.random(-1,1)), startingPos)
            Connection:InvokeServer(28, LocalPlayer.Character.Dodgeball)
        end)
        
        task.wait()
    until tick()-org >= duration
end

local function Fling(plr)
    if not plr then return warn("No Player") end
    repeat task.wait() until LocalPlayer.Character and LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    if not (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then return warn("LocalPlayer Character is nil") end
    if not (plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")) then return warn("Player character to fling is nil") end
    
    local OldCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
    local counter = 0
    -- ripped directly from infinite yield
    local bambam = Instance.new("BodyAngularVelocity")
    bambam.Name = ""
    bambam.Parent = LocalPlayer.Character.HumanoidRootPart
    bambam.AngularVelocity = Vector3.new(0,99999,0)
    bambam.MaxTorque = Vector3.new(0,math.huge,0)
    bambam.P = math.huge
    
    repeat
        pcall(function()
            local root = LocalPlayer.Character.HumanoidRootPart
        	local Char = LocalPlayer.Character:GetChildren()
        	for i, v in next, Char do
        		if v:IsA("BasePart") then
        			v.CanCollide = false
        			v.Massless = true
        			v.Velocity = Vector3.new(0, 0, 0)
        		end
        	end
        	bambam.AngularVelocity = Vector3.new(0,99999,0)
        	for i = 1, 6 do
        	    root.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.Humanoid.MoveDirection + Vector3.new(0,1,0)
        	    task.wait(.025)
            end
            bambam.AngularVelocity = Vector3.new(0,0,0)
            root.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.Humanoid.MoveDirection + Vector3.new(0,1,0)
        end)
        counter += 1
        task.wait()
    until counter > 300 or not (plr.Character and plr.Character:FindFirstChild("HumanoidRootPart"))
    
    LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
    bambam:Destroy()
end

LocalPlayer.CharacterAdded:Connect(function()
    print("Protecting...")
    ProtectAllies()
    print("Resetting...")
    Reset()
end
print("Starting...")
Reset()
