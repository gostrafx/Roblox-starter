local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = require(ReplicatedStorage.Packages.Knit)

local StartController = Knit.CreateController  {
    Name = "StartController",
}

function StartController:KnitInit()
    print("StartController initialized")
end

function StartController:KnitStart()
    print("StartController KnitStart")
end

return StartController