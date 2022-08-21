-- MoneyFunction
function GetScript()
    for i,v in pairs(game:GetService("ReplicatedFirst"):GetChildren()) do
        if (v.Name):match("^%-?%d+$") then
            return v
        end
    end
end

local FireServer = getupvalue(getsenv(GetScript()).Respawn,5)
local Remotes = getupvalue(getsenv(GetScript()).Respawn,6)

function Cash(Money)
    u5 = getupvalue(getconnections(Remotes["19574636"].OnClientEvent)[1].Function,1)
    u6 = getupvalue(getconnections(Remotes["38593640"].OnClientEvent)[1].Function,1)
    u7 = getupvalue(getconnections(Remotes["75924856"].OnClientEvent)[1].Function,1)
    Code = ("money"):byte() * Money + u5 * -21 + u6 * -45 + u7 * -63
    Remotes.UpdateStat:InvokeServer('money',Money,nil,Code)
    getsenv(GetScript()).pstats.money = getsenv(GetScript()).pstats.money + Money
    getsenv(GetScript()).gui.Data.Money.Text = getsenv(GetScript()).Comma(getsenv(GetScript()).pstats.money)
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Luaware V2 - Broken Bones IV", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText = "Luaware v2", ConfigFolder = "Luaware v2"})

local CashMoneyTab = Window:MakeTab({
	Name = "Currency",
	Icon = "rbxassetid://7733770599",
	PremiumOnly = false
})

local MoneySection = CashMoneyTab:AddSection({
	Name = "Currency Hacks"
})

CashMoneyTab:AddButton({
	Name = "Give 1 Billion Money",
	Callback = function()
        Cash(1000000000)
        OrionLib:MakeNotification({
			Name = "Currency:",
			Content = "Given 1000000000 currency to "..game.Players.LocalPlayer.Name,
			Image = "rbxassetid://7733770599",
			Time = 5
		})
  	end
})

CashMoneyTab:AddTextbox({
	Name = "Custom Money Amount",
	Default = "100000",
	TextDisappear = true,
	Callback = function(Value)
		Cash(tonumber(Value))
        OrionLib:MakeNotification({
			Name = "Currency:",
			Content = "Given ".. tostring(Value) .." currency to "..game.Players.LocalPlayer.Name,
			Image = "rbxassetid://7733770599",
			Time = 5
		})
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