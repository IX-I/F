local p = game.Players.LocalPlayer
local t = p.Team and p.Team.Name
local c = game.PlaceId == 12177325772 and {CFrame.new(-17,11,-250), CFrame.new(-17,11,-217)} or {CFrame.new(-17,11,-255), CFrame.new(-16,11,-214)}
p.Character.HumanoidRootPart.CFrame = t == "Home" and c[2] or t == "Away" and c[1] or p.Character.HumanoidRootPart.CFrame
