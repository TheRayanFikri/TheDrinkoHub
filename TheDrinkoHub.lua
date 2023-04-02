local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DrinkoHub", "Midnight")

local Tab1 = Window:NewTab("Main")
local Tab2 = Window:NewTab("Teleport")
local Tab3 = Window:NewTab("Player")

local Section1 = Tab1:NewSection("Fly")
local Section2 = Tab1:NewSection("SuperHuman")
local Section3 = Tab1:NewSection("InfiniteYield")
local Section4 = Tab3:NewSection("Walkspeed And JumpPower")


Section1:NewButton("Fly", "Makes you flying", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))()

    Fly(true)
end)

Section2:NewToggle("Super Human", "Increase You're WalkSpeed and JumpPower", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        
    end
end)
Section3:NewButton("InfiniteYield", "Gives you admin Power", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

Section4:NewSlider("WalkSpeed", "Customize you're WalkSpeed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section4:NewSlider("JumapPower", "Customize you're JumpPower", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section4:NewButton("Reset", "Reset you're walkspeed and JumpPower to normal", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 16
end)
