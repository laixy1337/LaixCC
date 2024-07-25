local Laixy = loadstring(game:HttpGet('https://raw.githubusercontent.com/laixy1337/LaixyLibrary/main/library.lua'))()
local gnm = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local Window = Laixy:CreateWindow({
   Name = "LaixCC",
   LoadingTitle = gnm,
   LoadingSubtitle = "by laixy1337",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "LaixCC"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", --discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | Youtube Hub",
      Subtitle = "Key System",
      Note = "Key In Discord Server",
      FileName = "YoutubeHubKey1", -- It is recommended to use something unique as other scripts using Laixy may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Laixy to get the key from
      Key = {""} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local EspTab = Window:CreateTab("ESP", nil) -- Title, Image
local EspSection = EspTab:CreateSection("Settings")

local Toggle = EspTab:CreateToggle({
   Name = "Show Bounty Cars",
   CurrentValue = false,
   Flag = "BountyCarEsp1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(value)
      if value then
        for _, car in ipairs(workspace.BountyVehicles.Vehicles:GetChildren()) do
            if car:IsA("Model") then
                local highlight = Instance.new("Highlight", car)
                highlight.Name = "Highlight"
                highlight.FillColor = Color3.fromRGB(255, 0, 0)
                highlight.FillTransparency = 0.5
            end
        end
      else
        for _, car in ipairs(workspace.BountyVehicles.Vehicles:GetChildren()) do
            if car:IsA("Model") and car:FindFirstChild("Highlight") then
              car:FindFirstChild("Highlight"):Destroy()
            end
        end
      end
   end,
})
