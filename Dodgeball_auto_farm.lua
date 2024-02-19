-- auto throws like literally everything !!!
_G.DodgeballAutoFarm = true
local plr = game:GetService("Players").LocalPlayer
local _root = function()
	return plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
end
local hum = function()
	return plr.Character and plr.Character:FindFirstChildWhichIsA("Humanoid")
end

for i, v in pairs(plr:GetChildren()) do -- fix boolean values / aimbot
	if v:IsA("BoolValue") then
		if v.Name == "Phone" then
			v.Value = false
			v:GetPropertyChangedSignal("Value"):Connect(function()
				v.Value = false
			end)
		elseif v.Name == "Tablet" then
			v.Value = true
			task.spawn(function()
				while task.wait(1) do
					v.Value = true
				end
			end)
		end
	end
end

if hum() then
	hum().HipHeight = 10
end

task.spawn(function()
	while task.wait(30) do
		_G.DodgeballAutoFarm = false
		task.wait(7)
		_G.DodgeballAutoFarm = true
	end
end)

local root = _root();

task.spawn(function()
	while task.wait() do
		if not _G.DodgeballAutoFarm then repeat task.wait(.1) until _G.DodgeballAutoFarm end
		mouse1click()
		if not hum() then continue end
		hum().WalkSpeed = 50
	end
end)

task.spawn(function()
	while task.wait(2) do
		pcall(function()
			hum():ChangeState(Enum.HumanoidStateType.Running)
			local pos = Vector3.new(-65, 300, -275) -- middle
			hum():MoveTo(pos + Vector3.new(math.random(-100,100), 0, math.random(-50,50)))
		end)
	end
end)

while task.wait(3) do
	if not _G.DodgeballAutoFarm then repeat task.wait(1) until _G.DodgeballAutoFarm; root = _root() end
	if root then
		local cf = root.CFrame
		local dub = 0

		if hum() then hum().HipHeight = 0 end

		for i, v in pairs(workspace:GetChildren()) do
			if v:IsA("BasePart") and v.Name == "Handle" and v.Color == Color3.fromRGB(196, 40, 28) then
				dub += 1
				if dub > 9 then continue end
				firetouchinterest(root, v, 0)
				task.wait()
			end
		end

		if hum() then
			for i = 1, 12 do
				if not hum() then break end
				hum().HipHeight = i
				task.wait(.05)
			end
		end
		dub = 0
		root.CFrame = cf
		if hum() then hum():ChangeState(Enum.HumanoidStateType.Running) end
	end
end
