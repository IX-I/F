local VXZworkspace = game.Workspace
local VVplaceId = game.PlaceId
local sevenVSeven = {
    XYX = {
        Position = Vector3.new(-16.684574127197266, 106.80000305175781, -233.94476318359375),
        Size = Vector3.new(223, 35, 362)
    },
    XVX = {
        Position = Vector3.new(-16.684574127197266, -9.5, -233.94476318359375),
        Size = Vector3.new(250, 35, 390)
    }
}
local fourVFour = {
    XYX = {
        Position = Vector3.new(-16.684574127197266, 106.30000305175781, -233.94476318359375),
        Size = Vector3.new(223, 35, 362)
    },
    XVX = {
        Position = Vector3.new(-16.684574127197266, -10.050000190734863, -233.94476318359375),
        Size = Vector3.new(250, 35, 390)
    }
}
local config = {
    [12177325772] = fourVFour,
    [127060568647054] = sevenVSeven,
    [126195208568849] = sevenVSeven
}
local data = config[VVplaceId]
local isUnknown = false
if not data then
    data = sevenVSeven
    isUnknown = true
end
for name, info in pairs(data) do
    if not VXZworkspace:FindFirstChild(name) then
        local part = Instance.new("Part")
        part.Parent = VXZworkspace
        part.Anchored = true
        part.Position = info.Position
        part.Size = info.Size
        part.BrickColor = BrickColor.new("Really black")
        part.Material = Enum.Material.ForceField
        part.Transparency = 1
        part.CanCollide = true
        part.Name = name
    end
end
if isUnknown then
end
