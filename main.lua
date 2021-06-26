
-- Instances:

local LuckyHub = Instance.new("ScreenGui")
local open = Instance.new("TextButton")
local hub = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local close = Instance.new("TextButton")
local alert = Instance.new("Frame")
local title = Instance.new("TextLabel")
local body = Instance.new("TextLabel")

--Properties:

LuckyHub.Name = "Lucky Hub"
LuckyHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LuckyHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

open.Name = "open"
open.Parent = LuckyHub
open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
open.Position = UDim2.new(0.804, 0, 0.604, 0)
open.Size = UDim2.new(0, 185, 0, 28)
open.Font = Enum.Font.SourceSans
open.Text = "Open GUI"
open.TextColor3 = Color3.fromRGB(0, 0, 0)
open.TextSize = 14.000

hub.Name = "hub"
hub.Parent = LuckyHub
hub.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
hub.Position = UDim2.new(0.804, 0, 0.376, 0)
hub.Size = UDim2.new(0, 185, 0, 100)
hub.Visible = false

TextLabel.Parent = hub
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 129, 129)
TextLabel.Position = UDim2.new(-0.0012280941, 0, -0.000397652388, 0)
TextLabel.Size = UDim2.new(0, 185, 0, 25)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Lucky Block GUI by utkuyilmaz1605"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

TextBox.Parent = hub
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.120072976, 0, 0.370000005, 0)
TextBox.Size = UDim2.new(0, 140, 0, 26)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Amount of Items"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000

TextButton.Parent = hub
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.120072991, 0, 0.719721675, 0)
TextButton.Size = UDim2.new(0, 140, 0, 19)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Spawn Items"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

close.Name = "close"
close.Parent = LuckyHub
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.Position = UDim2.new(0.804, 0, 0.604, 0)
close.Size = UDim2.new(0, 185, 0, 28)
close.Visible = false
close.Font = Enum.Font.SourceSans
close.Text = "Close GUI"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000

alert.Name = "alert"
alert.Parent = LuckyHub
alert.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
alert.BorderColor3 = Color3.fromRGB(27, 42, 53)
alert.Position = UDim2.new(1, 0, 0.68, 0)
alert.Size = UDim2.new(0, 185, 0, 85)
alert.Style = Enum.FrameStyle.DropShadow

title.Name = "title"
title.Parent = alert
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.0120507479, 0, -0.0499995351, 0)
title.Size = UDim2.new(0, 164, 0, 26)
title.SizeConstraint = Enum.SizeConstraint.RelativeXX
title.Font = Enum.Font.Ubuntu
title.Text = "Notification"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000

body.Name = "body"
body.Parent = alert
body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
body.BackgroundTransparency = 1.000
body.Position = UDim2.new(-0.048648648, 0, 0.110864975, 0)
body.Size = UDim2.new(0, 184, 0, 50)
body.Font = Enum.Font.SourceSans
body.TextColor3 = Color3.fromRGB(255, 255, 255)
body.TextSize = 14.000

-- Scripts:

local function LACK_fake_script() -- open.Script 
	local script = Instance.new('Script', open)

	function leftClick()
		script.Parent.Parent.hub.Visible = true
		script.Parent.Parent.close.Visible = true
		script.Parent.Visible = false
	end
	script.Parent.MouseButton1Click:Connect(leftClick)
end
coroutine.wrap(LACK_fake_script)()
local function UGKWALD_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	function leftClick()
		local amount = tonumber(script.Parent.Parent.TextBox.Text)
		print(script.Parent.Parent.TextBox.Text)
		for i=1, amount/2 do
			game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
		end
		local alert = script.Parent.Parent.Parent.alert
		alert.body.Text = "You recieved ".. amount .." items!"
		alert:TweenPosition(UDim2.new(0.804,0,0.68,0),1,7,3)
		wait(5)
		alert:TweenPosition(UDim2.new(1,0,0.68,0),1,1,1.5)
	end
	script.Parent.MouseButton1Click:Connect(leftClick)print("Hello world!")
	
end
coroutine.wrap(UGKWALD_fake_script)()
local function BNKVML_fake_script() -- close.Script 
	local script = Instance.new('Script', close)

	function leftClick()
		script.Parent.Parent.hub.Visible = false
		script.Parent.Parent.open.Visible = true
		script.Parent.Visible = false
	end
	script.Parent.MouseButton1Click:Connect(leftClick)
end
coroutine.wrap(BNKVML_fake_script)()
