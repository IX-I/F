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
