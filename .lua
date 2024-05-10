local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "Welcome to Uppercut Hub"..Player.Name.." ",
	Image = "rbxassetid://11915607895",
	Time = 5
})

local Player = game.Players.LocalPlayer

local Window = OrionLib:MakeWindow({Name = "Orion Example", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"})

OrionLib:MakeNotification({
	Name = "Logged in!",
	Content = "Welcome to Uppercut Hub"..Player.Name.." ",
	Image = "rbxassetid://11915607895",
	Time = 5
})

_G.Key = "Ents-KarEe-Kuyto-Hetad-HackO"

_G.KeyInput = "string"

function MakeScriptHub()
print("key is correct")
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "Wait Script",
	Image = "rbxassetid://11915607895",
	Time = 5
})
wait(3)
if wait(3) then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PeomPokkao/ScriptLastedButinUikeySystem/main/README.md"))();
    end
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
	Name = "Incorrect Key!",
	Content = "You have entered the Incorrectcorrect key!",
	Image = "rbxassetid://11915607895",
	Time = 5
})
end


local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://11915607895",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
      		if _G.KeyInput == _G.Key then
      		MakeScriptHub()
      		CorrectKeyNotification()    
      		else
      		    IncorrectKeyNotification()
      		end
  	end
})

Tab:AddButton({
	Name = "Destroy UI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})
