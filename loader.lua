local gid = game.PlaceId
local gnm = game:GetService("MarketplaceService"):GetProductInfo(gid).Name

if gid == 4924922222 then -- brookhaven
  print("Game detected: "..gnm)
elseif gid == 142823291 then -- mm2
  print("Game detected: "..gnm)
elseif gid == 301549746 then -- cb
  print("Game detected: "..gnm)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/laixy1337/LaixCC/main/cb.lua"))()
end
