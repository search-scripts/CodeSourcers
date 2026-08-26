-- Auto walk for free
local P = game:GetService("Players")
local R = game:GetService("RunService")

local p = P.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("Humanoid")
local r = c:WaitForChild("HumanoidRootPart")
local k = workspace.CurrentCamera

local t = workspace:WaitForChild("Zones"):WaitForChild("1")
	:WaitForChild("Trees"):WaitForChild("Tree"):WaitForChild("Ball")

R.RenderStepped:Connect(function()
	if not h or not r or not t then return end
	local x = t.Position
	c:SetPrimaryPartCFrame(CFrame.new(x))
	if h.MoveDirection.Magnitude == 0 then
		c:SetPrimaryPartCFrame(CFrame.new(x))
		local f = k.CFrame.LookVector
		h:Move(f, true)
	end
end)