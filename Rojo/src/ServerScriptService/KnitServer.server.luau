local ServerScriptService = game:GetService("ServerScriptService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Knit = require(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"))

--Knit.AddServices(ServerScriptService.Services)

Knit.Start({ ServicePromises = true })
	:andThen(function()
		print("Knit Start Server")
	end)
	:catch(warn)
	:await()
