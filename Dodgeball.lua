-- Gui to Lua
-- Version: 3.2

-- Instances:

local DDGBLL = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local ButtonHolder = Instance.new("Folder")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Title = Instance.new("TextLabel")
local Blatant = Instance.new("Folder")
local ProtectAllies = Instance.new("TextButton")
local HoverFling = Instance.new("TextButton")
local HoverKill = Instance.new("TextButton")
local FarmThrows = Instance.new("TextButton")
local HoverProtect = Instance.new("TextButton")
local RemoveGate = Instance.new("TextButton")
local AntiPos = Instance.new("TextButton")
local Non_Blatant = Instance.new("Folder")
local Aimbot = Instance.new("TextButton")
local PathPrediction = Instance.new("TextButton")
local RestockBalls = Instance.new("TextButton")
local Misc = Instance.new("Folder")
local Rejoin = Instance.new("TextButton")
local Reset = Instance.new("TextButton")
local FixCam = Instance.new("TextButton")
local NotifyCertz = Instance.new("TextButton")
local WalkSpeed = Instance.new("TextButton")
local JumpPower = Instance.new("TextButton")
local Left = Instance.new("Folder")
local Realign = Instance.new("TextButton")
local Blatant_2 = Instance.new("TextButton")
local Non_Blatant_2 = Instance.new("TextButton")
local Misc_2 = Instance.new("TextButton")
local Title_2 = Instance.new("TextLabel")
local Top = Instance.new("Folder")
local Minimize = Instance.new("TextButton")
local Exit = Instance.new("TextButton")
local Sounds = Instance.new("Folder")
local Credits = Instance.new("TextLabel")
local Credits_2 = Instance.new("TextLabel")
local NotificationSample = Instance.new("Frame")
local TrueTitle = Instance.new("TextLabel")
local Title_3 = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")
local NotificationHost = Instance.new("Folder")
local TextInput = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")

--Properties:

DDGBLL.Name = "DDGBLL"
DDGBLL.Parent = game:GetService("CoreGui")
DDGBLL.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = DDGBLL
Main.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0198544003, 0, 0.36122945, 0)
Main.Size = UDim2.new(0.313708007, 0, 0.466047704, 0)

ButtonHolder.Name = "ButtonHolder"
ButtonHolder.Parent = Main

ScrollingFrame.Parent = ButtonHolder
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.224999994, 0, 0.100000001, 0)
ScrollingFrame.Size = UDim2.new(0.774999976, 0, 0.899999976, 0)

Title.Name = "Title"
Title.Parent = ScrollingFrame
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(1, 0, 0.0500000007, 0)
Title.Font = Enum.Font.Cartoon
Title.Text = "Currently Viewing: ..."
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Blatant.Name = "Blatant"
Blatant.Parent = ScrollingFrame

ProtectAllies.Name = "ProtectAllies"
ProtectAllies.Parent = Blatant
ProtectAllies.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ProtectAllies.BorderColor3 = Color3.fromRGB(0, 0, 0)
ProtectAllies.BorderSizePixel = 0
ProtectAllies.Position = UDim2.new(0.550000012, 0, 0.280000001, 0)
ProtectAllies.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
ProtectAllies.Visible = false
ProtectAllies.Font = Enum.Font.Ubuntu
ProtectAllies.Text = "Protect Allies: OFF"
ProtectAllies.TextColor3 = Color3.fromRGB(255, 255, 255)
ProtectAllies.TextScaled = true
ProtectAllies.TextSize = 14.000
ProtectAllies.TextWrapped = true

HoverFling.Name = "HoverFling"
HoverFling.Parent = Blatant
HoverFling.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HoverFling.BorderColor3 = Color3.fromRGB(0, 0, 0)
HoverFling.BorderSizePixel = 0
HoverFling.Position = UDim2.new(0.550000012, 0, 0.180000007, 0)
HoverFling.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
HoverFling.Visible = false
HoverFling.Font = Enum.Font.Ubuntu
HoverFling.Text = "Hover Fling: OFF"
HoverFling.TextColor3 = Color3.fromRGB(255, 255, 255)
HoverFling.TextScaled = true
HoverFling.TextSize = 14.000
HoverFling.TextWrapped = true

HoverKill.Name = "HoverKill"
HoverKill.Parent = Blatant
HoverKill.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HoverKill.BorderColor3 = Color3.fromRGB(0, 0, 0)
HoverKill.BorderSizePixel = 0
HoverKill.Position = UDim2.new(0.150000006, 0, 0.180000007, 0)
HoverKill.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
HoverKill.Visible = false
HoverKill.Font = Enum.Font.Ubuntu
HoverKill.Text = "Hover Kill: OFF"
HoverKill.TextColor3 = Color3.fromRGB(255, 255, 255)
HoverKill.TextScaled = true
HoverKill.TextSize = 14.000
HoverKill.TextWrapped = true

FarmThrows.Name = "FarmThrows"
FarmThrows.Parent = Blatant
FarmThrows.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FarmThrows.BorderColor3 = Color3.fromRGB(0, 0, 0)
FarmThrows.BorderSizePixel = 0
FarmThrows.Position = UDim2.new(0.550000012, 0, 0.0799999982, 0)
FarmThrows.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
FarmThrows.Visible = false
FarmThrows.Font = Enum.Font.Ubuntu
FarmThrows.Text = "Farm Throws: OFF"
FarmThrows.TextColor3 = Color3.fromRGB(255, 255, 255)
FarmThrows.TextScaled = true
FarmThrows.TextSize = 14.000
FarmThrows.TextWrapped = true

HoverProtect.Name = "HoverProtect"
HoverProtect.Parent = Blatant
HoverProtect.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HoverProtect.BorderColor3 = Color3.fromRGB(0, 0, 0)
HoverProtect.BorderSizePixel = 0
HoverProtect.Position = UDim2.new(0.150000006, 0, 0.280000001, 0)
HoverProtect.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
HoverProtect.Visible = false
HoverProtect.Font = Enum.Font.Ubuntu
HoverProtect.Text = "Hover Protect: OFF"
HoverProtect.TextColor3 = Color3.fromRGB(255, 255, 255)
HoverProtect.TextScaled = true
HoverProtect.TextSize = 14.000
HoverProtect.TextWrapped = true

RemoveGate.Name = "RemoveGate"
RemoveGate.Parent = Blatant
RemoveGate.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RemoveGate.BorderColor3 = Color3.fromRGB(0, 0, 0)
RemoveGate.BorderSizePixel = 0
RemoveGate.Position = UDim2.new(0.349999994, 0, 0.379999995, 0)
RemoveGate.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
RemoveGate.Visible = false
RemoveGate.Font = Enum.Font.Ubuntu
RemoveGate.Text = "Remove Gate"
RemoveGate.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveGate.TextScaled = true
RemoveGate.TextSize = 14.000
RemoveGate.TextWrapped = true

AntiPos.Name = "AntiPos"
AntiPos.Parent = Blatant
AntiPos.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AntiPos.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiPos.BorderSizePixel = 0
AntiPos.Position = UDim2.new(0.150000006, 0, 0.0799999982, 0)
AntiPos.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
AntiPos.Visible = false
AntiPos.Font = Enum.Font.Ubuntu
AntiPos.Text = "Anti Position: OFF"
AntiPos.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiPos.TextScaled = true
AntiPos.TextSize = 14.000
AntiPos.TextWrapped = true

Non_Blatant.Name = "Non_Blatant"
Non_Blatant.Parent = ScrollingFrame

Aimbot.Name = "Aimbot"
Aimbot.Parent = Non_Blatant
Aimbot.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Aimbot.BorderColor3 = Color3.fromRGB(0, 0, 0)
Aimbot.BorderSizePixel = 0
Aimbot.Position = UDim2.new(0.150000006, 0, 0.0799999982, 0)
Aimbot.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
Aimbot.Visible = false
Aimbot.Font = Enum.Font.Ubuntu
Aimbot.Text = "Aimbot: OFF"
Aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
Aimbot.TextScaled = true
Aimbot.TextSize = 14.000
Aimbot.TextWrapped = true

PathPrediction.Name = "PathPrediction"
PathPrediction.Parent = Non_Blatant
PathPrediction.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PathPrediction.BorderColor3 = Color3.fromRGB(0, 0, 0)
PathPrediction.BorderSizePixel = 0
PathPrediction.Position = UDim2.new(0.550000012, 0, 0.0799999982, 0)
PathPrediction.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
PathPrediction.Visible = false
PathPrediction.Font = Enum.Font.Ubuntu
PathPrediction.Text = "Path Prediction: OFF"
PathPrediction.TextColor3 = Color3.fromRGB(255, 255, 255)
PathPrediction.TextScaled = true
PathPrediction.TextSize = 14.000
PathPrediction.TextWrapped = true

RestockBalls.Name = "RestockBalls"
RestockBalls.Parent = Non_Blatant
RestockBalls.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RestockBalls.BorderColor3 = Color3.fromRGB(0, 0, 0)
RestockBalls.BorderSizePixel = 0
RestockBalls.Position = UDim2.new(0.150000006, 0, 0.180000007, 0)
RestockBalls.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
RestockBalls.Visible = false
RestockBalls.Font = Enum.Font.Ubuntu
RestockBalls.Text = "Restock Balls"
RestockBalls.TextColor3 = Color3.fromRGB(255, 255, 255)
RestockBalls.TextScaled = true
RestockBalls.TextSize = 14.000
RestockBalls.TextWrapped = true

Misc.Name = "Misc"
Misc.Parent = ScrollingFrame

Rejoin.Name = "Rejoin"
Rejoin.Parent = Misc
Rejoin.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Rejoin.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rejoin.BorderSizePixel = 0
Rejoin.Position = UDim2.new(0.150000006, 0, 0.0799999982, 0)
Rejoin.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
Rejoin.Visible = false
Rejoin.Font = Enum.Font.Ubuntu
Rejoin.Text = "Rejoin"
Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.TextScaled = true
Rejoin.TextSize = 14.000
Rejoin.TextWrapped = true

Reset.Name = "Reset"
Reset.Parent = Misc
Reset.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Reset.BorderColor3 = Color3.fromRGB(0, 0, 0)
Reset.BorderSizePixel = 0
Reset.Position = UDim2.new(0.550000012, 0, 0.0799999982, 0)
Reset.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
Reset.Visible = false
Reset.Font = Enum.Font.Ubuntu
Reset.Text = "Reset"
Reset.TextColor3 = Color3.fromRGB(255, 255, 255)
Reset.TextScaled = true
Reset.TextSize = 14.000
Reset.TextWrapped = true

FixCam.Name = "FixCam"
FixCam.Parent = Misc
FixCam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FixCam.BorderColor3 = Color3.fromRGB(0, 0, 0)
FixCam.BorderSizePixel = 0
FixCam.Position = UDim2.new(0.150000006, 0, 0.180000007, 0)
FixCam.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
FixCam.Visible = false
FixCam.Font = Enum.Font.Ubuntu
FixCam.Text = "Fix Cam"
FixCam.TextColor3 = Color3.fromRGB(255, 255, 255)
FixCam.TextScaled = true
FixCam.TextSize = 14.000
FixCam.TextWrapped = true

NotifyCertz.Name = "NotifyCertz"
NotifyCertz.Parent = Misc
NotifyCertz.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NotifyCertz.BorderColor3 = Color3.fromRGB(0, 0, 0)
NotifyCertz.BorderSizePixel = 0
NotifyCertz.Position = UDim2.new(0.550000012, 0, 0.180000007, 0)
NotifyCertz.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
NotifyCertz.Visible = false
NotifyCertz.Font = Enum.Font.Ubuntu
NotifyCertz.Text = "Notify Certz: OFF"
NotifyCertz.TextColor3 = Color3.fromRGB(255, 255, 255)
NotifyCertz.TextScaled = true
NotifyCertz.TextSize = 14.000
NotifyCertz.TextWrapped = true

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = Misc
WalkSpeed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed.BorderColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed.BorderSizePixel = 0
WalkSpeed.Position = UDim2.new(0.150000006, 0, 0.280000001, 0)
WalkSpeed.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
WalkSpeed.Visible = false
WalkSpeed.Font = Enum.Font.Ubuntu
WalkSpeed.Text = "Set WalkSpeed"
WalkSpeed.TextColor3 = Color3.fromRGB(255, 255, 255)
WalkSpeed.TextScaled = true
WalkSpeed.TextSize = 14.000
WalkSpeed.TextWrapped = true

JumpPower.Name = "JumpPower"
JumpPower.Parent = Misc
JumpPower.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JumpPower.BorderColor3 = Color3.fromRGB(0, 0, 0)
JumpPower.BorderSizePixel = 0
JumpPower.Position = UDim2.new(0.550000012, 0, 0.280000001, 0)
JumpPower.Size = UDim2.new(0.300000012, 0, 0.0799999982, 0)
JumpPower.Visible = false
JumpPower.Font = Enum.Font.Ubuntu
JumpPower.Text = "Set JumpPower"
JumpPower.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpPower.TextScaled = true
JumpPower.TextSize = 14.000
JumpPower.TextWrapped = true

Left.Name = "Left"
Left.Parent = ButtonHolder

Realign.Name = "Realign"
Realign.Parent = Left
Realign.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Realign.BackgroundTransparency = 1.000
Realign.BorderColor3 = Color3.fromRGB(0, 0, 0)
Realign.BorderSizePixel = 0
Realign.Position = UDim2.new(0, 0, 0.100000001, 0)
Realign.Size = UDim2.new(0.224999994, 0, 0.150000006, 0)
Realign.Font = Enum.Font.Cartoon
Realign.Text = "Re-align"
Realign.TextColor3 = Color3.fromRGB(255, 255, 255)
Realign.TextScaled = true
Realign.TextSize = 14.000
Realign.TextWrapped = true

Blatant_2.Name = "Blatant"
Blatant_2.Parent = Left
Blatant_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blatant_2.BackgroundTransparency = 1.000
Blatant_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blatant_2.BorderSizePixel = 0
Blatant_2.Position = UDim2.new(0, 0, 0.699999988, 0)
Blatant_2.Size = UDim2.new(0.224999994, 0, 0.150000006, 0)
Blatant_2.Font = Enum.Font.Cartoon
Blatant_2.Text = "Blatant"
Blatant_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Blatant_2.TextScaled = true
Blatant_2.TextSize = 14.000
Blatant_2.TextWrapped = true

Non_Blatant_2.Name = "Non_Blatant"
Non_Blatant_2.Parent = Left
Non_Blatant_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Non_Blatant_2.BackgroundTransparency = 1.000
Non_Blatant_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Non_Blatant_2.BorderSizePixel = 0
Non_Blatant_2.Position = UDim2.new(0, 0, 0.850000024, 0)
Non_Blatant_2.Size = UDim2.new(0.224999994, 0, 0.150000006, 0)
Non_Blatant_2.Font = Enum.Font.Cartoon
Non_Blatant_2.Text = "Non-Blatant"
Non_Blatant_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Non_Blatant_2.TextScaled = true
Non_Blatant_2.TextSize = 14.000
Non_Blatant_2.TextWrapped = true

Misc_2.Name = "Misc"
Misc_2.Parent = Left
Misc_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Misc_2.BackgroundTransparency = 1.000
Misc_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Misc_2.BorderSizePixel = 0
Misc_2.Position = UDim2.new(0, 0, 0.550000012, 0)
Misc_2.Size = UDim2.new(0.224999994, 0, 0.150000006, 0)
Misc_2.Font = Enum.Font.Cartoon
Misc_2.Text = "Misc."
Misc_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Misc_2.TextScaled = true
Misc_2.TextSize = 14.000
Misc_2.TextWrapped = true

Title_2.Name = "Title"
Title_2.Parent = Main
Title_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(1, 0, 0.100000001, 0)
Title_2.Font = Enum.Font.PermanentMarker
Title_2.Text = "DODGEBALL GUI"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextWrapped = true

Top.Name = "Top"
Top.Parent = Title_2

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
Credits.Visible = false
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
Credits_2.Position = UDim2.new(-0.00200000009, 0, -0.100000001, 0)
Credits_2.Size = UDim2.new(1, 0, 1, 0)
Credits_2.Font = Enum.Font.Code
Credits_2.Text = "Made by __europa on Discord"
Credits_2.TextColor3 = Color3.fromRGB(35, 185, 255)
Credits_2.TextScaled = true
Credits_2.TextSize = 14.000
Credits_2.TextWrapped = true

NotificationSample.Name = "NotificationSample"
NotificationSample.Parent = DDGBLL
NotificationSample.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
NotificationSample.BackgroundTransparency = 0.200
NotificationSample.BorderColor3 = Color3.fromRGB(0, 0, 0)
NotificationSample.BorderSizePixel = 0
NotificationSample.Position = UDim2.new(0.800000012, 0, 0.75, 0)
NotificationSample.Size = UDim2.new(0.174999997, 0, 0.200000003, 0)
NotificationSample.Visible = false

TrueTitle.Name = "TrueTitle"
TrueTitle.Parent = NotificationSample
TrueTitle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TrueTitle.BackgroundTransparency = 0.200
TrueTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
TrueTitle.BorderSizePixel = 0
TrueTitle.Size = UDim2.new(1, 0, 0.150000006, 0)
TrueTitle.Font = Enum.Font.SourceSansBold
TrueTitle.Text = "Notification Alert"
TrueTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
TrueTitle.TextScaled = true
TrueTitle.TextSize = 14.000
TrueTitle.TextWrapped = true

Title_3.Name = "Title"
Title_3.Parent = NotificationSample
Title_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_3.BorderSizePixel = 0
Title_3.Position = UDim2.new(0, 0, 0.174999997, 0)
Title_3.Size = UDim2.new(1, 0, 0.300000012, 0)
Title_3.Font = Enum.Font.SourceSansBold
Title_3.Text = "Title"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextScaled = true
Title_3.TextSize = 14.000
Title_3.TextWrapped = true

Text.Name = "Text"
Text.Parent = NotificationSample
Text.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.100000001, 0, 0.5, 0)
Text.Size = UDim2.new(0.800000012, 0, 0.449999988, 0)
Text.Font = Enum.Font.SourceSansBold
Text.Text = "Text"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 16.000
Text.TextWrapped = true
Text.TextYAlignment = Enum.TextYAlignment.Top

NotificationHost.Name = "NotificationHost"
NotificationHost.Parent = DDGBLL

TextInput.Name = "TextInput"
TextInput.Parent = DDGBLL
TextInput.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TextInput.BackgroundTransparency = 0.200
TextInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextInput.BorderSizePixel = 0
TextInput.Position = UDim2.new(0.0198544003, 0, 0.825192332, 0)
TextInput.Size = UDim2.new(0.313707978, 0, 0.101000018, 0)
TextInput.Visible = false

Title_4.Name = "Title"
Title_4.Parent = TextInput
Title_4.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title_4.BackgroundTransparency = 0.200
Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title_4.BorderSizePixel = 0
Title_4.Position = UDim2.new(0, 0, 7.23165158e-07, 0)
Title_4.Size = UDim2.new(0.400000006, 0, 1, 0)
Title_4.Font = Enum.Font.SourceSansBold
Title_4.Text = "Set your [...] here:"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextScaled = true
Title_4.TextSize = 14.000
Title_4.TextWrapped = true

TextBox.Parent = TextInput
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.400000006, 0, 0, 0)
TextBox.Size = UDim2.new(0.600000024, 0, 1, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

-- Scripts:

local function main() -- ButtonHolder.Manager 
	local script = Instance.new('LocalScript', ButtonHolder)

	-- vital functions
	
	local getconnections = getconnections or nil
	local queue_on_teleport = queue_on_teleport or nil
	local firesignal = firesignal or (getconnections and function(a, ...) for i, v in next, getconnections(a) do v.Function(...) end end) or nil
	local firetouchinterest = firetouchinterest or function(part, opart, numtype)
		if numtype == 1 then
			return nil; -- this fti implementation will only operate on 0 because it already does a TouchEnded firing
		end
		-- getconnections implementation or touchinterest parenting implementation
	
		if getconnections then
			for i, v in next, getconnections(opart.Touched) do
				firesignal(v, part)
			end
	
			for i, v in next, getconnections(opart.TouchEnded) do
				firesignal(v, part)
			end
		else
			local garbage = Instance.new("Part", workspace)
	
			garbage.Transparency, garbage.CanCollide, garbage.Anchored, garbage.Size = 1, false, true, Vector3.new(1,1,1)
			garbage.Name = math.random() -- auto tostring so doesnt matter :sunglasses:
	
			local interest = opart:FindFirstChildWhichIsA("TouchInterest")
			if interest then
				-- touchinterest thing
				interest.Parent = garbage.Parent
				for i = 1, 3 do
					garbage.CFrame = part.CFrame
				end
	
				task.wait()
				interest.Parent = opart.Parent
				garbage:Destroy()
			else
				-- force cframe to part
				local org = opart.CFrame
				for i = 1, 10 do
					opart.CFrame = part.CFrame
				end
	
				for i = 1, 1000 do end
				opart.CFrame = org
			end
		end
	end
	
	-- variables
	
	local Players = game:GetService("Players")
	local CoreGui = game:GetService("CoreGui")
	local RunService = game:GetService("RunService")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local StarterGui = game:GetService("StarterGui")
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	
	local Storage = Instance.new("Folder")
	local Connection = ReplicatedStorage:WaitForChild("Connection")
	local CertzIntValue = ReplicatedStorage:WaitForChild("Config").Players[LocalPlayer.Name].Certz
	local TimeLeftIntValue = ReplicatedStorage:WaitForChild("Config").Game.TimeLeft
	
	local ButtonHolder = script.Parent
	local ScrollingFrame = ButtonHolder.ScrollingFrame
	local Blatant = ScrollingFrame.Blatant
	local Non_Blatant = ScrollingFrame.Non_Blatant
	local Misc = ScrollingFrame.Misc
	local Left = ButtonHolder.Left
	local Realign = Left.Realign
	local MainFrame = ButtonHolder.Parent
	local DodgeballGui = MainFrame.Parent
	local NotificationSample = DodgeballGui.NotificationSample
	local TextInput = DodgeballGui.TextInput
	local NotificationFolder = DodgeballGui.NotificationHost
	local Sounds = MainFrame.Sounds
	local cred = DodgeballGui:FindFirstChild("Credits")
	local OriginalPosition = MainFrame.Position
	local TextInputYOffset = 0.464
	
	-- highlight for mouse hover
	local Highlight = Instance.new("Highlight")
	Highlight.FillColor = Color3.fromRGB(8, 82, 255)
	Highlight.OutlineColor = Color3.fromRGB(6, 180, 255)
	
	-- in case gui's parent is playergui
	if MainFrame.Parent.Parent ~= CoreGui and pcall(tostring, CoreGui) then
		MainFrame.Parent.Parent = CoreGui
	end
	cred.Visible = true
	
	coroutine.wrap(function() -- drag
		local frame = MainFrame
		local dragToggle = nil
		local dragStart = nil
		local startPos = nil
	
		local function updateInput(input)
			local delta = input.Position - dragStart
			MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			
			-- align textinput to be below mainframe as well
			TextInput.Position = MainFrame.Position + UDim2.fromScale(0, TextInputYOffset)
		end
	
		frame.Title.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
	
		UserInputService.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input)
				end
			end
		end)
	end)()
	
	local function createSound(name, id)
		local sound = Instance.new("Sound", Sounds)
		sound.Name = name
		sound.Volume = 4
		sound.SoundId = id
	end
	
	if #Sounds:GetChildren() == 0 then -- gui2lua does not support sounds
		createSound("Land", "rbxassetid://268933974")
		createSound("S_AntiHit", "rbxassetid://5153733046")
		createSound("DEFAULT", "rbxassetid://8617766509")
		createSound("Disappear", "rbxassetid://1323739650")
		createSound("Click", "rbxassetid://4499400560")
		createSound("Notification", "rbxassetid://17208361335")
	end
	
	Sounds.Land:Play()
	
	local AimbotEnabled = false
	local FarmThrowsEnabled = false
	local HoverKillEnabled = false
	local HoverFlingEnabled = false
	local HoverProtectEnabled = false
	local ProtectAlliesEnabled = false
	local AntiTransferEnabled = false
	local NotifyOfCertzChange = false
	
	local Character = (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait())
	task.wait()
	local Root = (Character and Character:FindFirstChild("HumanoidRootPart"))
	
	local RootConn = Root.DescendantAdded:Connect(function(ins)
		if AntiTransferEnabled and ins:IsA("BodyPosition") then
			local a = 0
			ins.P = 0
			ins.MaxForce = Vector3.new(0,0,0)
			repeat ins:Destroy() a += 1 until a > 3
		end
	end)
	
	LocalPlayer.CharacterRemoving:Connect(function()
		Character = nil
		Root = nil
		
		RootConn:Disconnect()
		RootConn = nil
	end)
	LocalPlayer.CharacterAdded:Connect(function(new)
		Character = new
		repeat task.wait() until Character:FindFirstChild("HumanoidRootPart")
		Root = Character:FindFirstChild("HumanoidRootPart")
		
		RootConn = Root.DescendantAdded:Connect(function(ins)
			if AntiTransferEnabled and ins:IsA("BodyPosition") then
				local a = 0
				ins.P = 0
				ins.MaxForce = Vector3.new(0,0,0)
				repeat ins:Destroy() a += 1 until a > 3
			end
		end)
	end)
	
	local function checkroot() -- repeat task.wait() until checkroot()
		return Root ~= nil
	end
	
	local HoverCallback = nil;
	
	local MouseHoverConn = Mouse.Move:Connect(function()
		if not HoverCallback then return end
		
		local Target = Mouse.Target
		local plrTarget;
		
		if Target then
			local Model = Target.Parent
			
			if Model.ClassName ~= "Model" then
				repeat Model = Model.Parent until Model.ClassName == "Model" or Model.Parent == nil
				if Model.Parent == nil then
					Highlight.Parent = nil
					return
				end
			end
			
			for i, plr in pairs(Players:GetPlayers()) do
				if Target.Parent == plr.Character and not plr.Character:FindFirstChildWhichIsA("Highlight") then
					plrTarget = plr
					break
				end
			end
			plrTarget = LocalPlayer
			if not plrTarget then
				Highlight.Parent = nil
				return
			end
		else
			return
		end
		
		Highlight.Parent = plrTarget.Character
	end)
	
	local MouseClickConn = Mouse.Button1Up:Connect(function()
		if not HoverCallback then return end
		local plrTarget = Players:GetPlayerFromCharacter(Highlight.Parent)
		
		if plrTarget then
			Sounds.DEFAULT:Play()
			HoverCallback(plrTarget)
			Highlight.FillColor = Color3.fromRGB(80, 255, 61)
			Highlight.OutlineColor = Color3.fromRGB(128, 255, 121)
			task.wait(.02)
			Highlight.FillColor = Color3.fromRGB(8, 82, 255)
			Highlight.OutlineColor = Color3.fromRGB(6, 180, 255)
		end
	end)
	
	-- credits
	task.spawn(function()
		task.wait(2.5)
		
		for i = 1, 40 do
			cred.TextTransparency = i/40
			cred.Credits.TextTransparency = i/40
			task.wait()
		end
		
		cred:Destroy()
	end)
	
	local OldCertz = CertzIntValue.Value
	
	local function SetNotif(title, text)
		local Notif = NotificationSample:Clone()
	
		-- Set the starting position of the new notification
		Notif.Position = UDim2.new(0.8, 0, 0.75, 0)
	
		-- Add the notification and set its name based on the current number of notifications
		local notifCount = #NotificationFolder:GetChildren() + 1
		Notif.Name = "Notification" .. notifCount
		Notif.Parent = NotificationFolder
		Notif.Visible = true
		Notif.Title.Text = title
		Notif.Text.Text = text
	
		-- Reposition existing notifications to make room for the new one
		for i, existingNotif in ipairs(NotificationFolder:GetChildren()) do
			existingNotif.Position = UDim2.new(0.8, 0, 0.75 - (0.25 * (i - 1)), 0)
		end
	
		if notifCount >= 3 then
			local oldestNotif = NotificationFolder:FindFirstChild("Notification1")
			if oldestNotif then
				oldestNotif:Destroy()
			end
		end
		
		Sounds.Notification:Play()
	
		-- Delay and then animate the notification disappearing
		task.delay(3, function()
			if not Notif then return end
	
			for i = .8, 2, .02 do
				Notif.Position = UDim2.fromScale(i, Notif.Position.Y.Scale)
				task.wait()
			end
	
			Notif:Destroy()
		end)
		
		return false
	end
	
	CertzIntValue:GetPropertyChangedSignal("Value"):Connect(function()
		if NotifyOfCertzChange then
			SetNotif("Certz Notification", "You gained: " .. tostring(CertzIntValue.Value-OldCertz) .. " certz")
		end
		OldCertz = CertzIntValue.Value
	end)
	
	local function SetVisibleButtons(f)
		if f:FindFirstChildWhichIsA("TextButton").Visible then return end
		
		for _, otherbutton in pairs(ScrollingFrame:GetDescendants()) do
			if otherbutton:IsA("TextButton") and otherbutton.Parent ~= f then
				otherbutton.Visible = false
			end
		end
		
		for _, button in pairs(f:GetChildren()) do
			if button:IsA("TextButton") then
				button.Visible = true
			end
		end
	
		ScrollingFrame.Title.Text = "Currently Viewing: " .. f.Name
	end
	
	for i, v in pairs(Left:GetChildren()) do
		if v:IsA("TextButton") and v.Name ~= "Realign" then
			v.MouseButton1Click:Connect(function()
				SetVisibleButtons(ScrollingFrame[v.Name])
			end)
		end
	end
	
	Realign.MouseButton1Click:Connect(function()
		MainFrame.Position = OriginalPosition
	end)
	
	local function IsGameAlive()
		return TimeLeftIntValue.Value ~= 0
	end
	
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
	
	local function IsAlly(plr)
		return IsInGame(plr) and plr.Team == LocalPlayer.Team
	end
	
	local function GetAllies()
		local tbl = {}
	
		for i, v in pairs(Players:GetPlayers()) do
			if IsAlly(v) then
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
	
	local function GetBalls()
		if not IsGameAlive() then return SetNotif("Failed to Load", "Game is not active") end
		if not IsInGame(LocalPlayer) then return SetNotif("Failed to Load", "LocalPlayer is not in the game") end
		local dub = 0
	
		for i, v in pairs(workspace:GetChildren()) do
			if v:IsA("BasePart") and v.Name == "Handle" and v.Color == Color3.fromRGB(196, 40, 28) then
				dub += 1
				if dub > 9 then continue end
				pcall(firetouchinterest, Root, v, 0)
				task.wait()
			end
		end
	end
	
	local function Kill(plr)
		if not plr then return SetNotif("Failed to Load", "No Player") end
		if not IsGameAlive() then return SetNotif("Failed to Load", "Game is not active") end
		if not IsInGame(LocalPlayer) then return SetNotif("Failed to Load", "LocalPlayer is not in the game") end
		if not IsEnemy(plr) then return SetNotif("Failed to Load", "Player to kill is not an enemy or not in the game") end
	
		repeat
			if math.random(5) == 5 then
				GetBalls()
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
		if not plr then return SetNotif("Failed to Load", "No Player") end
		if not IsGameAlive() then return SetNotif("Failed to Load", "Game is not active") end
		if IsInGame(LocalPlayer) then return SetNotif("Failed to Load", "LocalPlayer must not be in the game for Protect to work") end
		if not IsInGame(plr) then return SetNotif("Failed to Load", "Player to protect is not in the game") end
		if IsEnemy(plr) then return SetNotif("Failed to Load", "Player to protect is an enemy, so protect will not work as intended") end
	
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
		if IsInGame(LocalPlayer) then return SetNotif("Failed to Load", "LocalPlayer must not be in the game for ProtectAllies to work") end
		if not IsGameAlive() then return SetNotif("Failed to Load", "Game is not active") end
	
		while #GetAllies() > 0 and ProtectAlliesEnabled and task.wait() do
			pcall(function()
				for i, v in pairs(workspace:GetChildren()) do
					if v:IsA("BasePart") and v.Name == "Handle" and v.Color == Color3.fromRGB(242, 243, 243) then
						firetouchinterest(Root, v, 0)
					end
				end
			end)
		end
	end
	
	local function SpawnBalls()
		if not IsInGame(LocalPlayer) or ((not Character) or not Character:FindFirstChild("Humanoid")) then return SetNotif("Failed to Load", "LocalPlayer must be in the game for SpawnBalls to work") end
	
		while IsInGame(LocalPlayer) and FarmThrowsEnabled do
			if math.random(4) == 4 then
				GetBalls()
			end
	
			pcall(function()
				local startingPos = Root.Position+Vector3.new(0, 5, 0)
	
				Connection:InvokeServer(1, Character.Dodgeball.Handle.Ref.Value, Vector3.new(math.random(-1,1),math.random(),math.random(-1,1)), startingPos)
				Connection:InvokeServer(28, Character.Dodgeball)
			end)
	
			task.wait()
		end
	end
	
	local function Fling(plr)
		if not plr then return SetNotif("Failed to Load", "No Player") end
		repeat task.wait() until checkroot()
		if not (plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")) then return SetNotif("Failed to Load", "Player character to fling is nil") end
	
		local OldCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
		local counter = 0
		-- ripped directly from infinite yield, not very consistent
		local bambam = Instance.new("BodyAngularVelocity")
		bambam.Name = ""
		bambam.Parent = LocalPlayer.Character.HumanoidRootPart
		bambam.AngularVelocity = Vector3.new(0,99999,0)
		bambam.MaxTorque = Vector3.new(0,math.huge,0)
		bambam.P = math.huge
	
		repeat
			pcall(function()
				local Root = LocalPlayer.Character.HumanoidRootPart
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
					Root.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.Humanoid.MoveDirection + Vector3.new(0,1,0)
					task.wait(.025)
				end
				bambam.AngularVelocity = Vector3.new(0,0,0)
				Root.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.Humanoid.MoveDirection + Vector3.new(0,1,0)
			end)
			counter += 1
			task.wait()
		until counter > 150 or not (plr.Character and plr.Character:FindFirstChild("HumanoidRootPart"))
	
		LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
		bambam:Destroy()
	end
	
	local thing, temp;
	
	local function RevealTextInput(name, callback)
		if name == nil or callback == nil then
			TextInput.Visible = false
			return
		end
		
		TextInput.Visible = true
		TextInput.Title.Text = "Set your " .. name .. " here:"
		
		if thing then thing:Disconnect() thing = nil end
		if temp then temp:Disconnect() temp = nil end
		
		thing = TextInput.TextBox.Focused:Connect(function()
			temp = TextInput.TextBox.FocusLost:Connect(function(enterPressed)
				if enterPressed and TextInput.TextBox.Text ~= "" then
					callback(TextInput.TextBox.Text)
					TextInput.TextBox.Text = "" -- reset
					RevealTextInput() -- will make the frame invisible
					
					thing:Disconnect()
					temp:Disconnect()
					thing = nil
					temp = nil
				end
			end)
		end)
	end
	
	local function SwitchButtonText(button, bool)
		local new = bool and ": ON" or ": OFF"
		button.Text = string.gsub(button.Text, ": ON", new)
		button.Text = string.gsub(button.Text, ": OFF", new)
	end
	
	local Predict = false
	
	task.spawn(function() -- ball pathway prediction
		local Host = Instance.new("Folder", workspace)
		Host.Name = "Pathways"
	
		task.spawn(function()
			while task.wait(30) do -- so things dont bug out a lot
				Host:ClearAllChildren()
			end
		end)
	
		local function Prediction(cl)
			local Path = Instance.new("Part", Host)
			Path.Name = "TEMP"
			task.spawn(function()
				while (cl and cl.Color ~= Color3.fromRGB(196, 40, 28)) and Path and task.wait(.05) do
					local r = Ray.new(cl.Position, cl.Velocity)
					local part, pos = workspace:FindPartOnRay(r)
					Path.Position =  cl.Position
					Path.Anchored = true
					Path.CanCollide = false
					Path.Transparency = 0.8
					Path.Color = Color3.fromRGB(152, 255, 147)
					Path.CFrame = CFrame.new(r.Origin, r.Origin + r.Direction)
					local size = (Path.Position - pos).Magnitude
					Path.Size = Vector3.new(2, 2, size)
					Path.CFrame *= CFrame.new(0, 0, -size/2)
					Path.Material = Enum.Material.Neon
				end
				Path:Destroy()
			end)
		end
		workspace.ChildAdded:Connect(function(v)
			if v:IsA("BasePart") and v.Name == "Handle" and v.Color ~= Color3.fromRGB(196, 40, 28) then
				repeat task.wait() until v:FindFirstChild("Owner") and (v:FindFirstChild("Owner").Value ~= nil and v:FindFirstChild("Owner").Value ~= "")
	
				if Predict and IsEnemy(v:FindFirstChild("Owner").Value) then
					task.spawn(Prediction, v)
				end
			end
		end)
		for i, v in pairs(workspace:GetChildren()) do
			if v:IsA("BasePart") and v.Name == "Handle" and v.Color ~= Color3.fromRGB(196, 40, 28) then
				repeat task.wait() until v:FindFirstChild("Owner") and (v:FindFirstChild("Owner").Value ~= nil and v:FindFirstChild("Owner").Value ~= "")
	
				if Predict and IsEnemy(v:FindFirstChild("Owner").Value) then
					task.spawn(Prediction, v)
				end
			end
		end
	end)
	
	for i, v in pairs(LocalPlayer:GetChildren()) do -- fix boolean values / aimbot
		if v:IsA("BoolValue") then
			if v.Name == "Phone" then
				v.Value = false
				v:GetPropertyChangedSignal("Value"):Connect(function()
					v.Value = false
				end)
			elseif v.Name == "Tablet" then
				v.Value = AimbotEnabled
				v:GetPropertyChangedSignal("Value"):Connect(function()
					v.Value = AimbotEnabled
				end)
			end
		end
	end
	
	for i, v in pairs(ScrollingFrame:GetDescendants()) do
		if v:IsA("TextButton") then
			v.MouseButton1Click:Connect(function()
				Sounds.DEFAULT:Play()
			end)
		end
	end
	
	local Blatant_List = {
		AntiPos = function()
			AntiTransferEnabled = not AntiTransferEnabled
			SwitchButtonText(Blatant.AntiPos, AntiTransferEnabled)
		end,
		FarmThrows = function()
			FarmThrowsEnabled = not FarmThrowsEnabled
			SwitchButtonText(Blatant.FarmThrows, FarmThrowsEnabled)
			
			if FarmThrowsEnabled then
				SpawnBalls()
			end
		end,
		HoverKill = function()
			HoverKillEnabled = not HoverKillEnabled
			SwitchButtonText(Blatant.HoverKill, HoverKillEnabled)
			
			if HoverFlingEnabled then
				HoverFlingEnabled = false
				SwitchButtonText(Blatant.HoverFling, HoverFlingEnabled)
			end
			if HoverProtectEnabled then
				HoverProtectEnabled = false
				SwitchButtonText(Blatant.HoverProtect, HoverProtectEnabled)
			end
			
			if HoverKillEnabled then
				HoverCallback = Kill
			elseif HoverCallback == Kill then
				HoverCallback = nil
			end
		end,
		HoverFling = function()
			HoverFlingEnabled = not HoverFlingEnabled
			SwitchButtonText(Blatant.HoverFling, HoverFlingEnabled)
			
			if HoverKillEnabled then
				HoverKillEnabled = false
				SwitchButtonText(Blatant.HoverKill, HoverKillEnabled)
			end
			if HoverProtectEnabled then
				HoverProtectEnabled = false
				SwitchButtonText(Blatant.HoverProtect, HoverProtectEnabled)
			end
			
			if HoverFlingEnabled then
				HoverCallback = Fling
			elseif HoverCallback == Fling then
				HoverCallback = nil
			end
		end,
		HoverProtect = function()
			if IsInGame(LocalPlayer) then return SetNotif("Failed to Load", "LocalPlayer must not be in the game for Protect to work") end
			HoverProtectEnabled = not HoverProtectEnabled
			SwitchButtonText(Blatant.HoverProtect, HoverProtectEnabled)
			
			if HoverKillEnabled then
				HoverKillEnabled = false
				SwitchButtonText(Blatant.HoverKill, HoverKillEnabled)
			end
			if HoverFlingEnabled then
				HoverFlingEnabled = false
				SwitchButtonText(Blatant.HoverFling, HoverFlingEnabled)
			end
			
			if HoverProtectEnabled then
				HoverCallback = Protect
			elseif HoverCallback == Protect then
				HoverCallback = nil
			end
		end,
		ProtectAllies = function()
			if IsInGame(LocalPlayer) then return SetNotif("Failed to Load", "LocalPlayer must not be in the game for Protect to work") end
			HoverProtectEnabled = not HoverProtectEnabled
			SwitchButtonText(Blatant.HoverProtect, HoverProtectEnabled)
			
			ProtectAllies()
		end,
		RemoveGate = function()
			for i, v in pairs(workspace:FindFirstChild("Model"):GetDescendants()) do
				local low = v.Name:lower()
				if string.find(low, "gate") or string.find(low, "fence") or string.find(low, "invis") then
					v:Destroy()
				end
			end
			Sounds.Disappear:Play()
		end,
	}
	
	local Non_Blatant_List = {
		Aimbot = function()
			AimbotEnabled = not AimbotEnabled
			SwitchButtonText(Non_Blatant.Aimbot, AimbotEnabled)
			
			LocalPlayer:FindFirstChild("Tablet").Value = AimbotEnabled
		end,
		RestockBalls = GetBalls,
		PathPrediction = function()
			Predict = not Predict
			SwitchButtonText(Non_Blatant.PathPrediction, Predict)
			
			if Character:FindFirstChild("Highlight") then Character:FindFirstChild("Highlight"):Destroy() end
			if Predict == false then return end
			repeat task.wait() until checkroot()
	
			local hl = Instance.new("Highlight", Character)
			hl.OutlineTransparency = 1
			hl.FillColor = Color3.fromRGB(0, 0, 255)
			hl.FillTransparency = 0.2
			Sounds.S_AntiHit:Play()
	
			for i = 1, 40 do
				hl.FillTransparency = (0.2 + (i/40))/1.2
				task.wait()
			end
	
			hl:Destroy()
		end,
	}
	
	local Misc_List = {
		Rejoin = function()
			if queue_on_teleport then pcall(queue_on_teleport, game:HttpGet("whatever man.")) end
			SetNotif("Rejoining...", "")
			game:GetService("TeleportService"):Teleport(game.PlaceId)
		end,
		Reset = function()
			if checkroot() then
				Character:FindFirstChildWhichIsA("Humanoid").Health = 0
				LocalPlayer.CharacterAdded:Wait()
			end
		end,
		FixCam = function()
			repeat task.wait() until checkroot()
			workspace.CurrentCamera:Remove()
	
			repeat task.wait() until checkroot()
			Sounds.Land:Play()
			workspace.CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			LocalPlayer.CameraMinZoomDistance = 0.5
			LocalPlayer.CameraMaxZoomDistance = 400
			LocalPlayer.CameraMode = Enum.CameraMode.Classic
			LocalPlayer.Character.Head.Anchored = false
		end,
		WalkSpeed = function()
			RevealTextInput("WalkSpeed", function(new)
				if not checkroot() then return SetNotif("Failed to change WalkSpeed", "Character/Humanoid was nil") end
				if not tonumber(new) then return SetNotif("Failed to change WalkSpeed", "Input could not be converted into a number") end
				
				Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = tonumber(new)
				SetNotif("WalkSpeed Successfully Set", "New WalkSpeed: " .. new)
			end)
		end,
		JumpPower = function()
			RevealTextInput("JumpPower", function(new)
				if not checkroot() then return SetNotif("Failed to change JumpPower", "Character/Humanoid was nil") end
				if not tonumber(new) then return SetNotif("Failed to change JumpPower", "Input could not be converted into a number") end
	
				Character:FindFirstChildWhichIsA("Humanoid").UseJumpPower = true
				Character:FindFirstChildWhichIsA("Humanoid").JumpPower = tonumber(new)
				SetNotif("JumpPower Successfully Set", "New JumpPower: " .. new)
			end)
		end,
		NotifyCertz = function()
			NotifyOfCertzChange = not NotifyOfCertzChange
			SwitchButtonText(Misc.NotifyCertz, NotifyOfCertzChange)
		end,
	}
	
	for name, callback in pairs(Non_Blatant_List) do
		Non_Blatant[name].MouseButton1Click:Connect(callback)
	end
	for name, callback in pairs(Blatant_List) do
		Blatant[name].MouseButton1Click:Connect(callback)
	end
	for name, callback in pairs(Misc_List) do
		Misc[name].MouseButton1Click:Connect(callback)
	end
	
	local Title = MainFrame.Title
	local Mini = Title.Top.Minimize
	local Exit = Title.Top.Exit
	
	local minified = false
	local tempButtonsWereVisible = {}
	
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
			ScrollingFrame.Visible = false
			
			for i, v in pairs(Left:GetChildren()) do
				if v:IsA("TextButton") then
					v.Visible = false
				end
			end
		else
			Title.Position = UDim2.new(0,0,0,0)
			Mini.Text = "-"
			MainFrame.BackgroundTransparency = 0
			ScrollingFrame.Visible = true
			
			for i, v in pairs(Left:GetChildren()) do
				if v:IsA("TextButton") then
					v.Visible = true
				end
			end
		end
	end)
	
	SetVisibleButtons(ScrollingFrame.Non_Blatant)
end

main()
