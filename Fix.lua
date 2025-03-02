-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel.Position = UDim2.new(0, 0, 0.842829704, 0)
ImageLabel.Size = UDim2.new(0, 98, 0, 104)
ImageLabel.Image = "rbxassetid://13333189485"

TextLabel.Parent = ImageLabel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.Position = UDim2.new(1.27318621, 0, 0.15628241, 0)
TextLabel.Size = UDim2.new(0, 373, 0, 95)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "POOP HAX V2 By Y00zieDaPro Run scripts lives without ANTI MEGA HAKC. HACK. or hack exserUse the mega HAKC executor to use scripts. Status: HACKROo.TED"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 22.000
TextLabel.TextTransparency = 1.000
TextLabel.TextWrapped = true

-- Scripts:

local function LNKHCD_fake_script() -- ScreenGui.moving things 
	local script = Instance.new('LocalScript', ScreenGui)

	wait(2)
	script.Parent.ImageLabel:TweenPosition(UDim2.new(0.474, 0,0.457, 0), "Out", "Sine")
	wait(3)
	script.Parent.ImageLabel:TweenPosition(UDim2.new(0, 0,0.823, 0), "Out", "Sine")
	local message = script.Parent.ImageLabel.TextLabel 
	wait(1)
	message.Transparency = 0.9
	wait()
	message.Transparency = 0.8
	wait()
	message.Transparency = 0.7
	wait()
	message.Transparency = 0.6
	wait()
	message.Transparency = 0.5
	wait()
	message.Transparency = 0.4
	wait()
	message.Transparency = 0.3
	wait()
	message.Transparency = 0.2
	wait()
	message.Transparency = 0.1
	wait()
	message.Transparency = 0
end
coroutine.wrap(LNKHCD_fake_script)()

local ScreenGui = Instance.new("ScreenGui")
local PAGE1 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")
local TextButton_9 = Instance.new("TextButton")
local TextButton_10 = Instance.new("TextButton")
local TextButton_11 = Instance.new("TextButton")
local TextButton_12 = Instance.new("TextButton")
local TextButton_13 = Instance.new("TextButton")
local PAGE2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_14 = Instance.new("TextButton")
local TextButton_15 = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextBox = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

PAGE1.Name = "PAGE 1"
PAGE1.Parent = ScreenGui
PAGE1.BackgroundColor3 = Color3.fromRGB(106, 102, 121)
PAGE1.BorderColor3 = Color3.fromRGB(0, 0, 0)
PAGE1.BorderSizePixel = 0
PAGE1.Position = UDim2.new(0.193161637, 0, 0.182152405, 0)
PAGE1.Size = UDim2.new(0, 325, 0, 347)

TextLabel.Parent = PAGE1
TextLabel.BackgroundColor3 = Color3.fromRGB(81, 78, 93)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.104615383, 0, 0.0374639779, 0)
TextLabel.Size = UDim2.new(0, 257, 0, 50)
TextLabel.Font = Enum.Font.Arial
TextLabel.Text = "POOPY HAX V2"
TextLabel.TextColor3 = Color3.fromRGB(208, 211, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = PAGE1
TextButton.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0276923068, 0, 0.244956776, 0)
TextButton.Size = UDim2.new(0, 87, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "explod all."
TextButton.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:Connect(function()
	local players = game:GetService("Players")

	for _, player in ipairs(players:GetPlayers()) do
		game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":explode " .. player.Name)
	end
end)

TextButton_2.Parent = PAGE1
TextButton_2.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0276923068, 0, 0.426512957, 0)
TextButton_2.Size = UDim2.new(0, 87, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "morph all darus"
TextButton_2.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Down:Connect(function()
	local players = game:GetService("Players")

	for _, player in ipairs(players:GetPlayers()) do
		game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":char " .. player.Name .. " lIAIbertsI")
	end
end)

TextButton_3.Parent = PAGE1
TextButton_3.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.366153836, 0, 0.244956776, 0)
TextButton_3.Size = UDim2.new(0, 87, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "name all poopy."
TextButton_3.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Down:Connect(function()
	local players = game:GetService("Players")

	for _, player in ipairs(players:GetPlayers()) do
		game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":name " .. player.Name .. " poopy")
	end
end)

TextButton_4.Parent = PAGE1
TextButton_4.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.673846126, 0, 0.244956776, 0)
TextButton_4.Size = UDim2.new(0, 87, 0, 50)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "anti muto рџі"
TextButton_4.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true
TextButton_4.MouseButton1Down:Connect(function()
	-- omge epoopy anti mute script AH.
	while wait() do
		if game.StarterGui:GetCoreGuiEnabled("Chat") == false then

			game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', true)
		end
	end
end)

TextButton_5.Parent = PAGE1
TextButton_5.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.366153836, 0, 0.426512957, 0)
TextButton_5.Size = UDim2.new(0, 87, 0, 50)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "coolie music."
TextButton_5.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true
TextButton_5.MouseButton1Down:Connect(function()
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":music 3653130528")
end)

TextButton_6.Parent = PAGE1
TextButton_6.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0.673846126, 0, 0.426512957, 0)
TextButton_6.Size = UDim2.new(0, 87, 0, 50)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "chair all POOP"
TextButton_6.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true
TextButton_6.MouseButton1Down:Connect(function()
	local players = game:GetService("Players")

	for _, player in ipairs(players:GetPlayers()) do
		game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":morph " .. player.Name .. " chair")
	end
end)

TextButton_7.Parent = PAGE1
TextButton_7.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.BorderSizePixel = 0
TextButton_7.Position = UDim2.new(0.0276923068, 0, 0.602305472, 0)
TextButton_7.Size = UDim2.new(0, 87, 0, 50)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "auto refresh"
TextButton_7.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_7.TextScaled = true
TextButton_7.TextSize = 14.000
TextButton_7.TextWrapped = true
TextButton_7.MouseButton1Down:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
		game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":re")
	end
end)

TextButton_8.Parent = PAGE1
TextButton_8.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.BorderSizePixel = 0
TextButton_8.Position = UDim2.new(0.366153836, 0, 0.602305472, 0)
TextButton_8.Size = UDim2.new(0, 87, 0, 50)
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = "bighead all"
TextButton_8.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_8.TextScaled = true
TextButton_8.TextSize = 14.000
TextButton_8.TextWrapped = true
TextButton_8.MouseButton1Down:Connect(function()
	local players = game:GetService("Players")

	for _, player in ipairs(players:GetPlayers()) do
		game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":bighead " .. player.Name)
	end
end)

TextButton_9.Parent = PAGE1
TextButton_9.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_9.BorderSizePixel = 0
TextButton_9.Position = UDim2.new(0.673846126, 0, 0.602305472, 0)
TextButton_9.Size = UDim2.new(0, 87, 0, 50)
TextButton_9.Font = Enum.Font.SourceSans
TextButton_9.Text = "poop all FUNNY HAHAH рџ¤Јрџ¤Јрџ¤Јрџ¤Ј"
TextButton_9.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_9.TextScaled = true
TextButton_9.TextSize = 14.000
TextButton_9.TextWrapped = true
TextButton_9.MouseButton1Down:Connect(function()
	local players = game:GetService("Players")

	for _, player in ipairs(players:GetPlayers()) do
		game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":poop " .. player.Name)
	end
end)

TextButton_10.Parent = PAGE1
TextButton_10.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_10.BorderSizePixel = 0
TextButton_10.Position = UDim2.new(0.0276923068, 0, 0.783861697, 0)
TextButton_10.Size = UDim2.new(0, 87, 0, 50)
TextButton_10.Font = Enum.Font.SourceSans
TextButton_10.Text = "spin all mega fast faster"
TextButton_10.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_10.TextScaled = true
TextButton_10.TextSize = 14.000
TextButton_10.TextWrapped = true
TextButton_10.MouseButton1Down:Connect(function()
	local players = game:GetService("Players")

	for _, player in ipairs(players:GetPlayers()) do
		game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":spin " .. player.Name .. " 9999999999999999999999")
	end
end)

TextButton_11.Parent = PAGE1
TextButton_11.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_11.BorderSizePixel = 0
TextButton_11.Position = UDim2.new(0.366153836, 0, 0.783861697, 0)
TextButton_11.Size = UDim2.new(0, 87, 0, 50)
TextButton_11.Font = Enum.Font.SourceSans
TextButton_11.Text = "RE"
TextButton_11.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_11.TextScaled = true
TextButton_11.TextSize = 14.000
TextButton_11.TextWrapped = true
TextButton_11.MouseButton1Down:Connect(function()
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":re")
end)

TextButton_12.Parent = PAGE1
TextButton_12.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_12.BorderSizePixel = 0
TextButton_12.Position = UDim2.new(0.673846126, 0, 0.783861697, 0)
TextButton_12.Size = UDim2.new(0, 87, 0, 50)
TextButton_12.Font = Enum.Font.SourceSans
TextButton_12.Text = "FF"
TextButton_12.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_12.TextScaled = true
TextButton_12.TextSize = 14.000
TextButton_12.TextWrapped = true
TextButton_12.MouseButton1Down:Connect(function()
	game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(":ff")
end)

TextButton_13.Parent = PAGE1
TextButton_13.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_13.BorderSizePixel = 0
TextButton_13.Position = UDim2.new(0, 0, -0.0720461085, 0)
TextButton_13.Size = UDim2.new(0, 119, 0, 25)
TextButton_13.Font = Enum.Font.SourceSans
TextButton_13.Text = "PAGE 2"
TextButton_13.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_13.TextScaled = true
TextButton_13.TextSize = 14.000
TextButton_13.TextWrapped = true

PAGE2.Name = "PAGE 2"
PAGE2.Parent = ScreenGui
PAGE2.BackgroundColor3 = Color3.fromRGB(106, 102, 121)
PAGE2.BorderColor3 = Color3.fromRGB(0, 0, 0)
PAGE2.BorderSizePixel = 0
PAGE2.Position = UDim2.new(0.187611014, 0, 0.178810149, 0)
PAGE2.Size = UDim2.new(0, 325, 0, 347)
PAGE2.Visible = false

TextLabel_2.Parent = PAGE2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(81, 78, 93)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.104615383, 0, 0.0374639779, 0)
TextLabel_2.Size = UDim2.new(0, 257, 0, 50)
TextLabel_2.Font = Enum.Font.Arial
TextLabel_2.Text = "POOPY HAX V2"
TextLabel_2.TextColor3 = Color3.fromRGB(208, 211, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton_14.Parent = PAGE2
TextButton_14.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_14.BorderSizePixel = 0
TextButton_14.Position = UDim2.new(0.104615383, 0, 0.610951006, 0)
TextButton_14.Size = UDim2.new(0, 248, 0, 50)
TextButton_14.Font = Enum.Font.SourceSans
TextButton_14.Text = "silent cmd"
TextButton_14.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_14.TextScaled = true
TextButton_14.TextSize = 14.000
TextButton_14.TextWrapped = true
TextButton_14.MouseButton1Down:Connect(function()
	game.Players:Chat(TextBox.Text)
	game.Players:Chat(":"..TextBox.Text.."")
end)

TextButton_15.Parent = PAGE2
TextButton_15.BackgroundColor3 = Color3.fromRGB(64, 62, 74)
TextButton_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_15.BorderSizePixel = 0
TextButton_15.Position = UDim2.new(0, 0, -0.0720461085, 0)
TextButton_15.Size = UDim2.new(0, 119, 0, 25)
TextButton_15.Font = Enum.Font.SourceSans
TextButton_15.Text = "PAGE 1"
TextButton_15.TextColor3 = Color3.fromRGB(208, 211, 255)
TextButton_15.TextScaled = true
TextButton_15.TextSize = 14.000
TextButton_15.TextWrapped = true

ScrollingFrame.Parent = PAGE2
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0615384616, 0, 0.276657075, 0)
ScrollingFrame.Size = UDim2.new(0, 276, 0, 90)

TextBox.Parent = ScrollingFrame
TextBox.BackgroundColor3 = Color3.fromRGB(81, 78, 93)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(-0.00367891626, 0, 0.00530056423, 0)
TextBox.Size = UDim2.new(0, 286, 0, 880)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(236, 210, 255)
TextBox.TextSize = 24.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

-- Scripts:

local function QBTJW_fake_script() -- TextButton_13.Script 
	local script = Instance.new('Script', TextButton_13)

	script.Parent.MouseButton1Down:Connect(function()
		if script.Parent.Parent.Parent["PAGE 1"].Visible == true then
			script.Parent.Parent.Parent["PAGE 1"].Visible = false
			script.Parent.Parent.Parent["PAGE 2"].Visible = true
		end
	end)
end
coroutine.wrap(QBTJW_fake_script)()
local function VBDPU_fake_script() -- PAGE1.LocalScript 
	local script = Instance.new('LocalScript', PAGE1)

	-- Place this script inside the Frame you want to make draggable
	
	local frame = script.Parent
	local dragging = false
	local dragInput, mousePos, framePos
	
	local function update(input)
		local delta = input.Position - mousePos
		frame.Position = UDim2.new(
			framePos.X.Scale,
			framePos.X.Offset + delta.X,
			framePos.Y.Scale,
			framePos.Y.Offset + delta.Y
		)
	end
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			mousePos = input.Position
			framePos = frame.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)
	
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging and input == dragInput then
			update(input)
		end
	end)
end
coroutine.wrap(VBDPU_fake_script)()
local function GVHZEGE_fake_script() -- TextButton_15.Script 
	local script = Instance.new('Script', TextButton_15)

	script.Parent.MouseButton1Down:Connect(function()
		if script.Parent.Parent.Parent["PAGE 2"].Visible == true then
			script.Parent.Parent.Parent["PAGE 2"].Visible = false
			script.Parent.Parent.Parent["PAGE 1"].Visible = true
		end
	end)
end
coroutine.wrap(GVHZEGE_fake_script)()
local function PNYZ_fake_script() -- PAGE2.LocalScript 
	local script = Instance.new('LocalScript', PAGE2)

	-- Place this script inside the Frame you want to make draggable
	
	local frame = script.Parent
	local dragging = false
	local dragInput, mousePos, framePos
	
	local function update(input)
		local delta = input.Position - mousePos
		frame.Position = UDim2.new(
			framePos.X.Scale,
			framePos.X.Offset + delta.X,
			framePos.Y.Scale,
			framePos.Y.Offset + delta.Y
		)
	end
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			mousePos = input.Position
			framePos = frame.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)
	
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging and input == dragInput then
			update(input)
		end
	end)
end
coroutine.wrap(PNYZ_fake_script)()
