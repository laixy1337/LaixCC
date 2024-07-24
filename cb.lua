local Laixy = loadstring(game:HttpGet('https://raw.githubusercontent.com/laixy1337/LaixyLibrary/main/library.lua'))()

local Window = Laixy:CreateWindow({
   Name = "LaixCC",
   LoadingTitle = "Counter Blox",
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
      Key = {"https://pastebin.com/raw/AtgzSPWK"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

