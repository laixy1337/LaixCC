local gid = game.PlaceId
local gnm = game:GetService("MarketplaceService"):GetProductInfo(gameId).Name

if gid == 4924922222 then -- brookhaven
  print("Game detected: "..gnm)
elseif gid == 142823291 then -- mm2
  print("Game detected: "..gnm)
elseif gid == 301549746 then
  print("Game detected: "..gnm) -- cb
end
