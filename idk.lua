


--thanks to robloxscripts.com for having a lot of the coding i need

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("thanos hub v3 ", "GrapeTheme")


local movement = Window:NewTab("movement")

local combat = Window:NewTab("combat")

local render = Window:NewTab("render")

local credits = Window:NewTab("credits")

local discord = Window:NewTab("discord")

local other = Window:NewTab("other")

local movementsection = movement:NewSection("movement")

local combatsection = combat:NewSection("combat")

local discordSection = discord:NewSection("discord")

local rendersection = render:NewSection("render")

local creditssection = credits:NewSection("credits")

local otherSection = other:NewSection("other")


movementsection:NewSlider("speed", "changes speed", 100, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

movementsection:NewSlider("gravity", "change ur gravity",500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game:GetService("Workspace").Gravity = s
end)

combatsection:NewButton("aimbot", "rightclick to lock screen on people who arent on team", function()
    G.AimbotInput = "RightClick"
        _G.AimbotEasing = 0.000000000000001
        _G.TeamCheck = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-aimbot/main/script.lua"))()
end)
combatsection:NewButton("silent aim", "auto aim no screen lock", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Thanosdagamer/silentaimscript/main/silentaim.lua"))()
end)

rendersection:NewButton("esp", "easily see players", function()
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
	_G.EnemyColor = Color3.fromRGB(255, 0, 0)
	_G.UseTeamColor = false
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
end)

creditssection:NewLabel("me (thanosdagamer#6469) (dm for support)")



discordSection:NewButton("copy discord invite", "copies discord invite link", function()
    setclipboard("discord.gg/jv9UdWQatA")
end)



otherSection:NewButton("godmode (BETA)", "sets u in god mode, but im not sure if works 100%", function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
 
local function Invincibility()
    if LocalPlayer.Character then
        for i, v in pairs(LocalPlayer.Character:GetChildren()) do
            if v.Name == "hitbox" then
                v:Destroy()
            end
        end
    end
end
 
while wait(0.5) do
    Invincibility(LocalPlayer)
end
end)

rendersection:NewButton("tracers", "draw lines to all players", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Tracers-Script/main/Tracers.lua"))()
end)

rendersection:NewButton("invisible", "hide and seek god mode XD", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Thanosdagamer/ffwefwefwefwefwf/main/fwefwefwefwe"))()
end)




