local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = require(ReplicatedStorage.Packages.Knit)


-- Knit.AddControllers(ReplicatedStorage:WaitForChild("Controllers"))
Knit.AddControllers(script.Parent:WaitForChild("Controllers"))

Knit.Start({ ServicePromises = true })
	:andThen(function()
		print("Knit Start Client")
	end)
	:catch(warn)
	:await()

