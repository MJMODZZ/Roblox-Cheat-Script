local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MJMODZZ/Roblox-Executor/main/LuaGUISources/GUI.lua"))()
local Window = Library.CreateLib("MJMODZZ", "Ocean")

--Movement1337Hax------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Tab = Window:NewTab("MovementHacks")
{
    local Section = Tab:NewSection("MovementHacks")
    {
                    OtherSection:NewButton("FlyHack", "Makes you fly lol", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MJMODZZ/Roblox-Executor/main/LuaGUISources/FlyHack.lua"))() 

        Fly(true)
    end)

            ----Flips----
        MainSection:NewButton("Flips", "Makes you do funny Back or Frontflips", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MJMODZZ/Roblox-Executor/main/LuaGUISources/BackFrontFlips.lua'))()
    end)

    ----MovementHack----
        MainSection:NewToggle("MovementHack", "Makes you to go fast or high", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end)

    ----WalkSpeed----
        PlayerSection:NewSlider("Walkspeed", "Change how fast you can walk", 500, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    -----RESET-----
    PlayerSection:NewButton("ResetWalkspeed", "Reset the Walkspeed to normal", function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end)



    ----JumpHigh----
        PlayerSection:NewSlider("JumpHigh", "Change how high you can jump", 350, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)
    -----RESET-----
    PlayerSection:NewButton("ResetJumpHigh", "Reset the JumpHigh to normal", function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end)
    }
}


--VisualsTab------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Tab = Window:NewTab("Visuals")
{
    local Section = Tab:NewSection("Visuals")
    {
        Section:NewLabel("No Visuals yet :-(")
    }
}



--MiscTab------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Tab = Window:NewTab("Misc")
{
    local Section = Tab:NewSection("Misc")
    {
            MainSection:NewButton("AdminCommands", "Use administrator Commands", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/MJMODZZ/Roblox-Executor/main/LuaGUISources/AdminCommands.lua'),true))()
    end)
    }
}



--ExploitTab------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Tab = Window:NewTab("Exploits")
{
    local Section = Tab:NewSection("Exploits")
    {
            ----ChatSpoofer----
        OtherSection:NewButton("Chat Spoofer", "Chat under someones name", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/MJMODZZ/Roblox-Executor/main/LuaGUISources/ChatSpoofer.lua'),true))()
    end)
    }
}

--Config tab------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Tab = Window:NewTab("Config")
{
    local Section = Tab:NewSection("Config")
    {
        Section:NewLabel("There is no ConfigSafer here, coming soon!!")
    }
}