local player = game.Players.LocalPlayer
local loadingScreen = player:WaitForChild("PlayerGui"):FindFirstChild("LoadingScreen")

for i = 1, 20 do
    if loadingScreen and loadingScreen.Parent then
        loadingScreen:Destroy()
    else
        
        break 
    end
end
local coreGui = game:GetService("CoreGui")
if coreGui:FindFirstChild("ScreenGui") then
    Fluent:Notify({
        Title = "NOTHING X",
        Content = "UI RUNING",
        SubContent = "", 
        Duration = 5
    })
    return
end
local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Luna-Interface-Suite/refs/heads/master/source.lua", true))()
local Window = Luna:CreateWindow({
    Name = " ", 
    Subtitle = " ", 
    LogoID = "", 
    LoadingEnabled = true, 
    LoadingTitle = "NOTHING X", 
    LoadingSubtitle = "", 
    ConfigSettings = {
        RootFolder = nil, 
        ConfigFolder = "KeyX"
    },
    KeySystem = true, 
    KeySettings = {
        Title = "NOTHING X HUB",
        Subtitle = "Key System",
        Note = "",
        SaveInRoot = false, 
        SaveKey = true, 
        Key = {"7793229829785927986293597837322924345997"},
        SecondAction = {
            Enabled = true,
            Type = "Link", 
            Parameter = "https://xnothing0x.github.io/Key/"
        }
    }
})
Luna:Destroy()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IX-I/F/refs/heads/W/SLSNEW/UI.lua"))()
task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IX-I/F/refs/heads/W/SLSNEW/THEME_UI.lua"))()
end)

task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IX-I/F/refs/heads/W/SLSNEW/delete"))()
end)
