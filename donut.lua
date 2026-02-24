-- Gui to Lua
-- Version: 3.2
-- ignore code comments the plugin added those
-- Instances:

local Exploit = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local ChilliHub = Instance.new("TextButton")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Yield = Instance.new("TextButton")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local Close = Instance.new("TextButton")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

Exploit.Name = "Exploit"
Exploit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Exploit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Exploit
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.700
Frame.BorderColor3 = Color3.fromRGB(0, 26, 255)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0.0805369094, 0, 0.151785716, 0)
Frame.Size = UDim2.new(0, 300, 0, 50)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 0.700
Title.BorderColor3 = Color3.fromRGB(255, 0, 0)
Title.BorderSizePixel = 4
Title.Position = UDim2.new(0, 0, -0.519999981, 0)
Title.Size = UDim2.new(0, 300, 0, 15)
Title.Font = Enum.Font.Unknown
Title.Text = "Donut GUI"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.TextScaled = true
Title.TextSize = 18.000
Title.TextWrapped = true

UITextSizeConstraint.Parent = Title
UITextSizeConstraint.MaxTextSize = 18

ChilliHub.Name = "Chilli Hub"
ChilliHub.Parent = Frame
ChilliHub.BackgroundColor3 = Color3.fromRGB(86, 104, 188)
ChilliHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChilliHub.BorderSizePixel = 0
ChilliHub.Position = UDim2.new(0.0266666673, 0, 0.140000001, 0)
ChilliHub.Size = UDim2.new(0, 131, 0, 36)
ChilliHub.Font = Enum.Font.FredokaOne
ChilliHub.Text = "Chilli Hub"
ChilliHub.TextColor3 = Color3.fromRGB(255, 255, 255)
ChilliHub.TextScaled = true
ChilliHub.TextSize = 27.000
ChilliHub.TextWrapped = true

UITextSizeConstraint_2.Parent = ChilliHub
UITextSizeConstraint_2.MaxTextSize = 27

Yield.Name = "Yield"
Yield.Parent = Frame
Yield.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Yield.BorderColor3 = Color3.fromRGB(0, 0, 0)
Yield.BorderSizePixel = 0
Yield.Position = UDim2.new(0.513333321, 0, 0.140000001, 0)
Yield.Size = UDim2.new(0, 132, 0, 36)
Yield.Font = Enum.Font.FredokaOne
Yield.Text = "Infinite Yield"
Yield.TextColor3 = Color3.fromRGB(255, 255, 255)
Yield.TextScaled = true
Yield.TextSize = 23.000
Yield.TextWrapped = true

UITextSizeConstraint_3.Parent = Yield
UITextSizeConstraint_3.MaxTextSize = 23

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(136, 0, 255)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(1.04666662, 0, 0.239999995, 0)
Close.Size = UDim2.new(0, 42, 0, 25)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 31.000
Close.TextWrapped = true

UITextSizeConstraint_4.Parent = Close
UITextSizeConstraint_4.MaxTextSize = 31

UIAspectRatioConstraint.Parent = Exploit
UIAspectRatioConstraint.AspectRatio = 1.774

-- Scripts:

local function XGCRXGK_fake_script() -- ChilliHub.LocalScript 
	local script = Instance.new('LocalScript', ChilliHub)

	local button = script.Parent
	local frame = button.Parent
	
	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
	end)
end
coroutine.wrap(XGCRXGK_fake_script)()
local function NMBFKXB_fake_script() -- Yield.LocalScript 
	local script = Instance.new('LocalScript', Yield)

	local par = script.Parent
	
	par.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/latest.lua'))()
	end)
	
end
coroutine.wrap(NMBFKXB_fake_script)()
local function HIAEK_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	local but = script.Parent
	local frame = but.Parent
	
	but.MouseButton1Click:Connect(function()
		frame.Visible = false
	end)
end
coroutine.wrap(HIAEK_fake_script)()
local function HZWUZT_fake_script() -- Frame.dragger 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(HZWUZT_fake_script)()
