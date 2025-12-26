game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[6].TextButton:Destroy()
game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[6].TextButton:Destroy()
game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[6].TextButton:Destroy()
game:GetService("CoreGui").ScreenGui:GetChildren()[2].Frame.BackgroundTransparency = 1
game:GetService("CoreGui").ScreenGui:GetChildren()[2].Frame.Background.BackgroundTransparency = 1
game:GetService("CoreGui").ScreenGui:GetChildren()[2].Frame.Frame.BackgroundTransparency = 0.4
game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[6]:GetChildren()[2].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
local gradient = game:GetService("CoreGui")
    .ScreenGui:GetChildren()[2]
    .Frame.Frame.UIGradient
gradient.Rotation = 90
gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),      
    ColorSequenceKeypoint.new(0.172, Color3.fromRGB(0, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))       
})
local scrollingFrame =
    game:GetService("CoreGui")
    .ScreenGui
    :GetChildren()[2]
    :GetChildren()[4]
    .ScrollingFrame

for _, obj in ipairs(scrollingFrame:GetDescendants()) do
    if obj:IsA("TextButton") then
        obj.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    end

    if obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
        obj.ImageColor3 = Color3.fromRGB(255, 0, 0)
    end
end
game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[4].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[6].Frame.TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[6].Frame.TextLabel.TextSize = 18
game:GetService("CoreGui").ScreenGui:GetChildren()[2].Frame:GetChildren()[7].UIStroke.Color = Color3.fromRGB(255, 0, 0)
game:GetService("CoreGui").ScreenGui:GetChildren()[2]:GetChildren()[5]:Destroy()
