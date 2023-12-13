local plrsrv = game:GetService("Players")
local pl = game.Players.LocalPlayer
local affected_player = nil
local SayRE = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local arguments = {[1] = "INFILTRATION LOADED. AUTOMATIC BEAST-KICKER ENABLED.", [2] = "All"}
--SayRE:FireServer(unpack(arguments))
task.wait()
arguments[1] = "MADE BY nigglit"
--SayRE:FireServer(unpack(arguments))
function saysomething(messagethingy)
	arguments[1] = messagethingy
	SayRE:FireServer(unpack(arguments))
end
function root()
	local char = pl.Character
	if char then
		local root = char:FindFirstChild("HumanoidRootPart")
		if root then return root end
		local torso = char:FindFirstChild("Torso")
		if torso then return torso end
	end
	return nil
end

function fling1()
	local step = game:GetService("RunService").Stepped:Connect(function()
		root().RotVelocity = Vector3.new(0,500,0)
		for i, v in pairs(pl.Character:GetChildren()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end)
	while task.wait(1) do
		if affected_player == nil then step:Disconnect() return end
	end
end

function get_things_right()
	local isbeast = pl:FindFirstChild("TempPlayerStatsModule"):FindFirstChild("IsBeast")
    if isbeast:IsA("BoolValue") then
        isbeast:GetPropertyChangedSignal("Value"):Connect(function()
            if isbeast.Value == true then
				saysomething("REJOINING INFILTRATED SERVER.")
                game:GetService("TeleportService"):Teleport(game.PlaceId, pl)
            end
        end)
    end
	if pl.Character:FindFirstChild("HumanoidRootPart") then pl.Character:FindFirstChild("HumanoidRootPart"):Destroy() end
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("LocalScript") and string.find(v.Name, "Powers") and v.Parent.Name ~= pl.Name then
			affected_player = plrsrv:GetPlayerFromCharacter(v.Parent)
			for i, v in pairs(pl.Character:GetDescendants()) do
				if v:IsA("BallSocketConstraint") then v:Destroy() end
				if v.Name == "Ragdoller" then v:Destroy() end
			end
			break
		end
	end
	if affected_player == nil then
		repeat
			task.wait(1)
			for i, v in pairs(workspace:GetDescendants()) do
				if v:IsA("LocalScript") and v.Name == "PowersLocalScript" and v.Parent.Name ~= pl.Name then
					affected_player = plrsrv:GetPlayerFromCharacter(v.Parent)
				elseif v.Parent.Name == pl.Name and v:IsA("LocalScript") and v.Name == "PowersLocalScript" then
					local q
					q = plrsrv:GetChildren()[math.random(#plrsrv:GetChildren())]
					if q.Name ~= pl.Name then
						affected_player = q
					else
						repeat q = plrsrv:GetChildren()[math.random(#plrsrv:GetChildren())] until q.Name ~= pl.Name
						affected_player = q
					end
				end
			end
		until affected_player ~= nil
	end
	task.spawn(function()
		fling1()
	end)
	while task.wait() do
		if pl.Character.Humanoid.Health < 10 then saysomething("REJOINING INFILTRATED SERVER.") game:GetService("TeleportService"):Teleport(game.PlaceId, pl) end
		if affected_player == nil or affected_player.Character == nil or affected_player.Character:FindFirstChild("Torso") == nil or root() == nil then saysomething("REJOINING INFILTRATED SERVER.") game:GetService("TeleportService"):Teleport(game.PlaceId, pl) end
		root().CFrame = affected_player.Character:FindFirstChild("Torso").CFrame
	end
	local weld = Instance.new("WeldConstraint", root())
	weld.Part0 = weld.Parent
	weld.Part1 = affected_player.Character:FindFirstChild("Torso")
end

pl.CharacterAdded:Connect(function(char)
	task.wait()
	get_things_right()
end)

get_things_right()
