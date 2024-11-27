-- Gui to Lua
-- Version: 3.2

-- Instances:

local DDGBLL = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local ButtonHolder = Instance.new("Folder")
local PathPrediction = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local GrabBalls = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local FixCam = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local RemoveGate = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Aimbot = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local AntiPos = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Rejoin = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Top = Instance.new("Folder")
local Minimize = Instance.new("TextButton")
local Exit = Instance.new("TextButton")
local Sounds = Instance.new("Folder")
local Credits = Instance.new("TextLabel")
local Credits_2 = Instance.new("TextLabel")

--Properties:

DDGBLL.Name = "DDGBLL"
DDGBLL.Parent = game:GetService("CoreGui")
DDGBLL.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = DDGBLL
Main.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 0, 0.346806407, 0)
Main.Size = UDim2.new(0.198717952, 0, 0.304989994, 0)

ButtonHolder.Name = "ButtonHolder"
ButtonHolder.Parent = Main

PathPrediction.Name = "PathPrediction"
PathPrediction.Parent = ButtonHolder
PathPrediction.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PathPrediction.BorderSizePixel = 0
PathPrediction.Position = UDim2.new(0.148458153, 0, 0.200000003, 0)
PathPrediction.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
PathPrediction.Font = Enum.Font.PermanentMarker
PathPrediction.Text = "PathPrediction"
PathPrediction.TextColor3 = Color3.fromRGB(255, 255, 255)
PathPrediction.TextScaled = true
PathPrediction.TextSize = 14.000
PathPrediction.TextWrapped = true

UICorner.Parent = PathPrediction

GrabBalls.Name = "GrabBalls"
GrabBalls.Parent = ButtonHolder
GrabBalls.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GrabBalls.BorderSizePixel = 0
GrabBalls.Position = UDim2.new(0.398458153, 0, 0.200000003, 0)
GrabBalls.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
GrabBalls.Font = Enum.Font.PermanentMarker
GrabBalls.Text = "GrabBalls"
GrabBalls.TextColor3 = Color3.fromRGB(255, 255, 255)
GrabBalls.TextScaled = true
GrabBalls.TextSize = 14.000
GrabBalls.TextWrapped = true

UICorner_2.Parent = GrabBalls

FixCam.Name = "FixCam"
FixCam.Parent = ButtonHolder
FixCam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FixCam.BorderSizePixel = 0
FixCam.Position = UDim2.new(0.648458183, 0, 0.200000003, 0)
FixCam.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
FixCam.Font = Enum.Font.PermanentMarker
FixCam.Text = "FixCam"
FixCam.TextColor3 = Color3.fromRGB(255, 255, 255)
FixCam.TextScaled = true
FixCam.TextSize = 14.000
FixCam.TextWrapped = true

UICorner_3.Parent = FixCam

RemoveGate.Name = "RemoveGate"
RemoveGate.Parent = ButtonHolder
RemoveGate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RemoveGate.BorderSizePixel = 0
RemoveGate.Position = UDim2.new(0.148458153, 0, 0.527225196, 0)
RemoveGate.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
RemoveGate.Font = Enum.Font.PermanentMarker
RemoveGate.Text = "RemoveGate"
RemoveGate.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveGate.TextScaled = true
RemoveGate.TextSize = 14.000
RemoveGate.TextWrapped = true

UICorner_4.Parent = RemoveGate

Aimbot.Name = "Aimbot"
Aimbot.Parent = ButtonHolder
Aimbot.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Aimbot.BorderSizePixel = 0
Aimbot.Position = UDim2.new(0.398458153, 0, 0.527225196, 0)
Aimbot.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
Aimbot.Font = Enum.Font.PermanentMarker
Aimbot.Text = "Aimbot"
Aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
Aimbot.TextScaled = true
Aimbot.TextSize = 14.000
Aimbot.TextWrapped = true

UICorner_5.Parent = Aimbot

AntiPos.Name = "AntiPos"
AntiPos.Parent = ButtonHolder
AntiPos.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AntiPos.BorderSizePixel = 0
AntiPos.Position = UDim2.new(0.648458183, 0, 0.527225196, 0)
AntiPos.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
AntiPos.Font = Enum.Font.PermanentMarker
AntiPos.Text = "AntiPosition"
AntiPos.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiPos.TextScaled = true
AntiPos.TextSize = 14.000
AntiPos.TextWrapped = true

UICorner_6.Parent = AntiPos

Rejoin.Name = "Rejoin"
Rejoin.Parent = ButtonHolder
Rejoin.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Rejoin.BorderSizePixel = 0
Rejoin.Position = UDim2.new(0.349999994, 0, 0.800000012, 0)
Rejoin.Size = UDim2.new(0.300000012, 0, 0.143000007, 0)
Rejoin.Font = Enum.Font.PermanentMarker
Rejoin.Text = "Rejoin"
Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.TextScaled = true
Rejoin.TextSize = 14.000
Rejoin.TextWrapped = true

UICorner_7.Parent = Rejoin

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(1, 0, 0.100000001, 0)
Title.Font = Enum.Font.PermanentMarker
Title.Text = "DODGEBALL GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Top.Name = "Top"
Top.Parent = Title

Minimize.Name = "Minimize"
Minimize.Parent = Top
Minimize.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Minimize.BackgroundTransparency = 1.000
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.800000012, 0, 0, 0)
Minimize.Size = UDim2.new(0.100000001, 0, 1, 0)
Minimize.Font = Enum.Font.SourceSansBold
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.TextScaled = true
Minimize.TextSize = 14.000
Minimize.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = Top
Exit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Exit.BackgroundTransparency = 1.000
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.899999976, 0, 0, 0)
Exit.Size = UDim2.new(0.100000001, 0, 1, 0)
Exit.Font = Enum.Font.SourceSansBold
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true

Sounds.Name = "Sounds"
Sounds.Parent = Main

Credits.Name = "Credits"
Credits.Parent = DDGBLL
Credits.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits.BackgroundTransparency = 1.000
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 0, 0.449999988, 0)
Credits.Size = UDim2.new(1, 0, 0.100000001, 0)
Credits.Font = Enum.Font.Code
Credits.Text = "Made by __europa on Discord"
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true

Credits_2.Name = "Credits"
Credits_2.Parent = Credits
Credits_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits_2.BackgroundTransparency = 1.000
Credits_2.BorderSizePixel = 0
Credits_2.Position = UDim2.new(-0.00100000005, 0, -0.0500000007, 0)
Credits_2.Size = UDim2.new(1, 0, 1, 0)
Credits_2.Font = Enum.Font.Code
Credits_2.Text = "Made by __europa on Discord"
Credits_2.TextColor3 = Color3.fromRGB(35, 185, 255)
Credits_2.TextScaled = true
Credits_2.TextSize = 14.000
Credits_2.TextWrapped = true

-- Scripts:

local function OKOJB_fake_script() -- ButtonHolder.Manager 
	local script = Instance.new('LocalScript', ButtonHolder)

	local Players = game:GetService("Players")
	local ButtonHolder = script.Parent
	local MainFrame = ButtonHolder.Parent
	local Sounds = MainFrame.Sounds
	
	if MainFrame.Parent.Parent ~= game:GetService("CoreGui") then -- too lazy to put coregui instead of plrgui
		MainFrame.Parent.Parent = game:GetService("CoreGui")
	end
	
	local function createsound(name, id)
		local sound = Instance.new("Sound", Sounds)
		sound.Name = name
		sound.Volume = 4
		sound.SoundId = id
	end
	
	if #Sounds:GetChildren() == 0 then -- gui2lua does not support sounds
		createsound("Land", "rbxassetid://268933974")
		createsound("S_AntiHit", "rbxassetid://5153733046")
		createsound("DEFAULT", "rbxassetid://8617766509")
		createsound("Disappear", "rbxassetid://1323739650")
		createsound("Click", "rbxassetid://4499400560")
	end
	
	Sounds.Land:Play()
	
	local plr = Players.LocalPlayer
	local char = (plr.Character or plr.CharacterAdded:Wait())
	task.wait()
	local root = (char and char:FindFirstChild("HumanoidRootPart"))
	
	plr.CharacterRemoving:Connect(function()
		char = nil
		root = nil
	end)
	plr.CharacterAdded:Connect(function(new)
		char = new
		repeat task.wait() until char:FindFirstChild("HumanoidRootPart")
		root = char:FindFirstChild("HumanoidRootPart")
	end)
	
	local function checkroot() -- repeat task.wait() until checkroot()
		return root ~= nil
	end
	
	-- credits
	
	task.spawn(function()
		task.wait(2.5)
		local cred = MainFrame.Parent:FindFirstChild("Credits")
		if not cred then while true do end end
		for i = 1, 40 do
			cred.TextTransparency = i/40
			cred.Credits.TextTransparency = i/40
			task.wait()
		end
		cred:Destroy()
	end)
	
	local aimbotEnabled = false
	local antiTransferEnabled = false
	
	for i, v in pairs(plr:GetChildren()) do -- fix boolean values / aimbot
		if v:IsA("BoolValue") then
			if v.Name == "Phone" then
				v.Value = false
				v:GetPropertyChangedSignal("Value"):Connect(function()
					v.Value = false
				end)
			elseif v.Name == "Tablet" then
				v.Value = aimbotEnabled
				v:GetPropertyChangedSignal("Value"):Connect(function()
					v.Value = aimbotEnabled
				end)
			end
		end
	end
	
	for i, v in pairs(ButtonHolder:GetChildren()) do
		if v:IsA("TextButton") then
			v.MouseButton1Up:Connect(function()
				Sounds.DEFAULT:Play()
			end)
		end
	end
	
	ButtonHolder.Aimbot.MouseButton1Up:Connect(function()
		aimbotEnabled = not aimbotEnabled
		plr:FindFirstChild("Tablet").Value = aimbotEnabled
	end)
	
	ButtonHolder.GrabBalls.MouseButton1Up:Connect(function()
		repeat task.wait() until checkroot()
		local cf = root.CFrame
		local dub = 0
		for i, v in pairs(workspace:GetChildren()) do
			if v:IsA("BasePart") and v.Name == "Handle" and v.Color == Color3.fromRGB(196, 40, 28) then
				dub += 1
				if dub > 9 then continue end
				firetouchinterest(root, v, 0)
				task.wait()
			end
		end
		if root.Parent:FindFirstChildOfClass("Humanoid") then
			for i = 1, 5 do
				root.Parent:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Running)
			end
		end
		dub = 0
		root.CFrame = cf
	end)
	
	ButtonHolder.FixCam.MouseButton1Up:Connect(function()
		repeat task.wait() until checkroot()
		workspace.CurrentCamera:Remove()
		
		repeat task.wait() until plr.Character ~= nil
		Sounds.Land:Play()
		workspace.CurrentCamera.CameraSubject = plr.Character:FindFirstChildWhichIsA('Humanoid')
		workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
		plr.CameraMinZoomDistance = 0.5
		plr.CameraMaxZoomDistance = 400
		plr.CameraMode = Enum.CameraMode.Classic
		plr.Character.Head.Anchored = false
	end)
	
	ButtonHolder.AntiPos.MouseButton1Up:Connect(function()
		antiTransferEnabled = not antiTransferEnabled
		if antiTransferEnabled then
			local conn = root.DescendantAdded:Connect(function(ins)
				if ins:IsA("BodyPosition") then
					local a = 0
					ins.P = 0
					ins.MaxForce = Vector3.new(0,0,0)
					repeat ins:Destroy() a += 1 until a > 3
				end
			end)
			while task.wait(1) do
				repeat task.wait(1) until (not root) or antiTransferEnabled == false
				repeat task.wait(.1) until root or antiTransferEnabled == false
				if antiTransferEnabled == false then conn:Disconnect() break end
				
				root.DescendantAdded:Connect(function(ins) -- reconnect
					if ins:IsA("BodyPosition") then
						local a = 0
						ins.P = 0
						ins.MaxForce = Vector3.new(0,0,0)
						repeat ins:Destroy() a += 1 until a > 3
					end
				end)
			end
		end
	end)
	
	ButtonHolder.RemoveGate.MouseButton1Up:Connect(function()
		for i, v in pairs(workspace:FindFirstChild("Model"):GetDescendants()) do
			local low = v.Name:lower()
			if string.find(low, "gate") or string.find(low, "fence") or string.find(low, "invis") then
				v:Destroy()
			end
		end
		Sounds.Disappear:Play()
	end)
	
	local predict = false
	
	task.spawn(function() -- ball pathway prediction
		local function isFriendly(otherplr)
			if otherplr then
				if otherplr.Team == plr.Team then
					return true
				end
				return false
			end
			return warn("Could not find, perhaps ball took too long to add an Owner value?")
		end
		
		local fold = Instance.new("Folder", workspace)
		fold.Name = "PATHWAYS"
		
		task.spawn(function()
			while task.wait(30) do -- so things dont bug out a lot
				fold:ClearAllChildren()
			end
		end)
	
		local function prediction(cl)
			local prt = Instance.new("Part", fold)
			prt.Name = "TEMP"
			task.spawn(function()
				while (cl and cl.Color ~= Color3.fromRGB(196, 40, 28)) and prt and task.wait(.05) do
					local r = Ray.new(cl.Position, cl.Velocity)
					local part, pos = workspace:FindPartOnRay(r)
					prt.Position =  cl.Position
					prt.Anchored = true
					prt.CanCollide = false
					prt.Transparency = 0.8
					prt.Color = Color3.fromRGB(152, 255, 147)
					prt.CFrame = CFrame.new(r.Origin, r.Origin + r.Direction)
					local size = (prt.Position - pos).Magnitude	
					prt.Size = Vector3.new(2, 2, size)
					prt.CFrame *= CFrame.new(0, 0, -size/2)
					prt.Material = Enum.Material.Neon
				end
				prt:Destroy()
			end)
		end
		workspace.ChildAdded:Connect(function(v)
			if v:IsA("BasePart") and v.Name == "Handle" and v.Color ~= Color3.fromRGB(196, 40, 28) then
				repeat task.wait() until v:FindFirstChild("Owner") and (v:FindFirstChild("Owner").Value ~= nil and v:FindFirstChild("Owner").Value ~= "")
				if predict and not isFriendly(v:FindFirstChild("Owner").Value) then
					task.spawn(prediction, v)
				end
			end
		end)
		for i, v in pairs(workspace:GetChildren()) do
			if v:IsA("BasePart") and v.Name == "Handle" and v.Color ~= Color3.fromRGB(196, 40, 28) then
				repeat task.wait() until v:FindFirstChild("Owner") and (v:FindFirstChild("Owner").Value ~= nil and v:FindFirstChild("Owner").Value ~= "")
				if predict and not isFriendly(v:FindFirstChild("Owner").Value) then
					task.spawn(prediction, v)
				end
			end
		end
	end)
	
	ButtonHolder.PathPrediction.MouseButton1Up:Connect(function()
		predict = not predict
		if char:FindFirstChild("Highlight") then char:FindFirstChild("Highlight"):Destroy() end
		if predict == false then return end
		repeat task.wait() until checkroot()
		local hl = Instance.new("Highlight", char)
		hl.OutlineTransparency = 1
		hl.FillColor = Color3.fromRGB(0, 0, 255)
		hl.FillTransparency = 0.2
		Sounds.S_AntiHit:Play()
		for i = 1, 40 do
			hl.FillTransparency = (0.2 + (i/40))/1.2
			task.wait()
		end
		hl:Destroy()
	end)
	
	ButtonHolder.Rejoin.MouseButton1Up:Connect(function()
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end)
	
	local Title = MainFrame.Title
	local Mini = Title.Top.Minimize
	local Exit = Title.Top.Exit
	
	local minified = false
	
	Exit.MouseButton1Up:Connect(function()
		Sounds.Disappear:Play()
		MainFrame.Parent:Destroy()
	end)
	
	Mini.MouseButton1Up:Connect(function()
		minified = not minified
		Sounds.Land:Play()
		if minified then
			Title.Position = UDim2.new(0,0,0.9,0)
			Mini.Text = "+"
			MainFrame.BackgroundTransparency = 1
			for i, v in pairs(ButtonHolder:GetChildren()) do
				if v:IsA("TextButton") then
					v.Visible = false
				end
			end
		else
			Title.Position = UDim2.new(0,0,0,0)
			Mini.Text = "-"
			MainFrame.BackgroundTransparency = 0
			for i, v in pairs(ButtonHolder:GetChildren()) do
				if v:IsA("TextButton") then
					v.Visible = true
				end
			end
		end
	end)
end
coroutine.wrap(OKOJB_fake_script)()
