local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = game:GetService("Players")
local PlayerGui = player.LocalPlayer.PlayerGui
local Knit = require(ReplicatedStorage.Packages.Knit)
local SG = require(ReplicatedStorage.ReferenceExplorer.StarterGuiModule)
local WP = require(ReplicatedStorage.ReferenceExplorer.WorkspaceModule)
local Ground  =  game:GetService("Workspace"):FindFirstChild(WP.BasePart.Name) :: Part
local UI = PlayerGui:WaitForChild(SG.UI.Name) :: ScreenGui

local Dialog = UI:WaitForChild(SG.UI.Dialog.Name) :: Frame
local AlertButton = Dialog:WaitForChild(SG.UI.Dialog.AlertButton.Name) :: TextButton
local CloseButton = Dialog:WaitForChild(SG.UI.Dialog.CloseButton.Name) :: TextButton

local Menu = UI:WaitForChild(SG.UI.Menu.Name) :: Frame
local OpenButton = Menu:WaitForChild(SG.UI.Menu.OpenButton.Name) :: ImageButton

local StartController = Knit.CreateController  {
    Name = "StartController",
}

function StartController:KnitInit()
    print("StartController initialized")
end

function StartController:KnitStart()
    OpenButton.Activated:Connect(function(inputObject, clickCount)
        Dialog.Visible = true
        OpenButton.Visible = false
        task.wait(1)
    end)
    CloseButton.Activated:Connect(function(inputObject, clickCount)
        Dialog.Visible = false
        OpenButton.Visible = true
        task.wait(1)
    end)
    AlertButton.Activated:Connect(function(inputObject, clickCount)
        print("Hello World")
        Ground.Color = Color3.fromRGB(math.random(0,255),math.random(0,255),math.random(0,255))
    end)
end

return StartController