-- GUI Loadstring --
local Library = loadstring(game:HttpGet(""))()

-- GUI Theme --
local Window = Library.CreateLib("All Games All Cheats", "AllGamesAllCheats")

---------------- Tabs ----------------
-- Aimbot Tab --
local Tab = Window:NewTab("Aimbots")
local AimbotSection = Tab:NewSection("Aimbots")

AimbotSection:NewButton("Wheelchair Cheat", "This button will start the wheelchair cheat", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Wheeleee/AIMWARE/main/Startup"))()
end)


-- Mods Tab --
local Tab = Window:NewTab("Mods")
local ModSection = Tab:NewSection("Mods")


-- Player --
local Tab = Window:NewTab("Player")
local PlayerSection = Tab:NewSection("Player")


-- Other --
local Tab = Window:NewTab("Other")
local OtherSection = Tab:NewSection("Other")
