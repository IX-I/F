local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local OWNER_NAME = "NOTHING_X1020"
local FILE = "NOTHING_X_____savekey.lua"
local KEY_LIFETIME = 18000
local GENERATE_WAIT = 40
local LOAD_TIME = 1
local KEY_LENGTH = 10485760
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
if game.CoreGui:FindFirstChild("NOTHING_X") or game.CoreGui:FindFirstChild("NOTHING_X_OWNER") then
warn "-"
    return 
end
local player = game.Players.LocalPlayer
local loadingScreen = player:WaitForChild("PlayerGui"):FindFirstChild("LoadingScreen")

for i = 1, 20 do
    if loadingScreen and loadingScreen.Parent then
        loadingScreen:Destroy()
    else
        
        break 
    end
end
local function showLoading(gui)
    local loadGui = Instance.new("Frame", gui)
    loadGui.Size = UDim2.fromScale(1, 1)
    loadGui.BackgroundColor3 = Color3.new(0, 0, 0)
    loadGui.BorderSizePixel = 0
    local barBack = Instance.new("Frame", loadGui)
    barBack.Size = UDim2.fromOffset(300, 20)
    barBack.Position = UDim2.fromScale(0.5, 0.5)
    barBack.AnchorPoint = Vector2.new(0.5, 0.5)
    barBack.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    barBack.BorderSizePixel = 0
    Instance.new("UICorner", barBack).CornerRadius = UDim.new(0, 10)
    local barFill = Instance.new("Frame", barBack)
    barFill.Size = UDim2.fromScale(0, 1)
    barFill.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    barFill.BorderSizePixel = 0
    Instance.new("UICorner", barFill).CornerRadius = UDim.new(0, 10)
    --//////

loadstring(game:HttpGet("https://raw.githubusercontent.com/IX-I/F/refs/heads/W/SLSNEW/UI.lua"))()

task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IX-I/F/refs/heads/W/SLSNEW/THEME_UI.lua"))()
end)

task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IX-I/F/refs/heads/W/SLSNEW/delete"))()
end)

    --\\\\\\

    local start = tick()
    while tick() - start < LOAD_TIME do
        barFill.Size = UDim2.new((tick() - start) / LOAD_TIME, 0, 1, 0)
        task.wait()
    end
end
if LP.Name == OWNER_NAME then
    local gui = Instance.new("ScreenGui", game.CoreGui)
    gui.Name = "NOTHING_X_OWNER"
    showLoading(gui)
    gui:Destroy()
    return
end
local function genKey()
    local s = {}
    for i = 1, KEY_LENGTH do
        s[i] = tostring(math.random(0, 9))
        if i % 25000 == 0 then
            task.wait()
        end
    end
    return table.concat(s)
end
local function saveKey(k, t)
    writefile(FILE, k .. "|" .. t)
end
local function loadKey()
    if not isfile(FILE) then return end
    local c = readfile(FILE)
    local k, e = c:match("(.+)|(%d+)")
    if not k or not e then return end
    if os.time() > tonumber(e) then return end
    return k
end
local existing = loadKey()
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "NOTHING_X"
local main = Instance.new("Frame", gui)
main.Size = UDim2.fromOffset(390, 140)
main.Position = UDim2.fromScale(0.5, 0.5)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.BackgroundTransparency = 0.5
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 16)
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "NOTHING X"
title.Font = Enum.Font.GothamBlack
title.TextScaled = true
title.TextColor3 = Color3.new(0, 0, 0)
title.BackgroundTransparency = 1
local btn = Instance.new("TextButton", main)
btn.Size = UDim2.fromOffset(390, 50)
btn.Position = UDim2.fromOffset(0, 60)
btn.Text = "GENERATE KEY"
btn.Font = Enum.Font.GothamBold
btn.TextScaled = true
btn.TextColor3 = Color3.new(0, 0, 0)
btn.BackgroundColor3 = Color3.new(0, 0, 0)
btn.BackgroundTransparency = 0.8
Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)
btn.MouseButton1Click:Connect(function()
    btn:Destroy()
    local info = Instance.new("TextLabel", main)
    info.Size = UDim2.fromOffset(390, 50)
    info.Position = UDim2.fromOffset(0, 60)
    info.BackgroundColor3 = Color3.new(0, 0, 0)
    info.BackgroundTransparency = 0.8
    info.Font = Enum.Font.GothamBold
    info.TextScaled = true
    info.TextColor3 = Color3.new(0, 0, 0)
    info.TextXAlignment = Enum.TextXAlignment.Center
    info.TextYAlignment = Enum.TextYAlignment.Center
    Instance.new("UICorner", info).CornerRadius = UDim.new(0, 10)
    for i = GENERATE_WAIT, 1, -1 do
        info.Text = (i == 1 and "Saving key...") or ("WAIT "..i.."s")
        task.wait(1)
    end
    local k = genKey()
    saveKey(k, os.time() + KEY_LIFETIME)
    info.Text = "Done Save Key 5h Valid"
    task.wait(3)
    main.Visible = false
    showLoading(gui)
    gui:Destroy()
end)
if existing then
    showLoading(gui)
    gui:Destroy()
end
