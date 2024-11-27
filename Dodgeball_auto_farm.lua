_G.DodgeballAutoFarm = true

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Connection = game:GetService("ReplicatedStorage"):WaitForChild("Connection")

while task.wait(.25) do
    if not _G.DodgeballAutoFarm then continue end

    pcall(function()
        local root = LocalPlayer.Character.HumanoidRootPart

        if math.random(2) == 2 then
            for i, v in pairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and v.Name == "Handle" and v.Color == Color3.fromRGB(196, 40, 28) then
                    dub += 1
                    if dub > 9 then continue end
                    print(pcall(firetouchinterest, root, v, 0))
                    task.wait()
                end
            end
        end
        
        local GetValidPlayers = function()
                local tbl = {}
                for i, v in pairs(Players:GetPlayers()) do
                        if v.Team ~= LocalPlayer.Team and v.Character:FindFirstChild("EnemyArrow") then
                                table.insert(tbl, v)
                        end
                end
                return tbl
        end
        
        local randPlayer = 
        GetValidPlayers()[math.random(#GetValidPlayers())]
        
        local direction = 
        randPlayer.Character.Humanoid.MoveDirection
        local startingPos = randPlayer.Character.HumanoidRootPart.Position
        
        Connection:InvokeServer(1, LocalPlayer.Character.Dodgeball.Handle.Ref.Value, direction, startingPos)
        Connection:InvokeServer(28, LocalPlayer.Character.Dodgeball)
    end)
end
