-- OBFUSCATOR WASNT WORKING YOU FUCKING SKID FUCK OFF




















_G.autofarm = false

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Luaware V2 - Destruction Simulator", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText = "Luaware v2", ConfigFolder = "Luaware v2"})

local Tab = Window:MakeTab({
	Name = "Functions",
	Icon = "rbxassetid://7072716095",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Autofarms"
})

Tab:AddToggle({
	Name = "Autosell Bricks",
	Default = false,
	Callback = function(Value)
        _G.autofarm = Value
		while _G.autofarm and wait(1) do
            game:GetService("ReplicatedStorage").Remotes.sellBricks:FireServer()
        end
	end
})

local Section2 = Tab:AddSection({
	Name = "Add money"
})

Tab:AddButton({
	Name = "+10M Coins",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, 10000000)
  	end    
})

local Section2 = Tab:AddSection({
	Name = "Add levels"
})

Tab:AddButton({
	Name = "+10 Levels",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, 10)
  	end    
})

local Tab2 = Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://7072724538",
	PremiumOnly = false
})

Tab2:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab2:AddSlider({
	Name = "Jumppower",
	Min = 50,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpHeight = Value 
	end
})

local Tab3 = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://7072722883",
	PremiumOnly = false
})

Tab3:AddParagraph("Credits","\nScripting - luaware#8473\nUI Library: Orion Library\nFavourite user: "..game.Players.LocalPlayer.Name)
Tab3:AddButton({
	Name = "Copy discord.",
	Callback = function()
		setclipboard("https://discord.gg/RPCvQRPwsQ")
		OrionLib:MakeNotification({
			Name = "Credits:",
			Content = "Discord copied to clipboard.",
			Image = "rbxassetid://7072722883",
			Time = 5
		})
  	end    
})

OrionLib:Init()
