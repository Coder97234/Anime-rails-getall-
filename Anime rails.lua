local player = game:GetService("Players").LocalPlayer
local dataFolder = player:WaitForChild("Data")

-- Reset all Data values to 0
for _, item in ipairs(dataFolder:GetChildren()) do
    local args = {
        "ClassInfo",
        item.Name,
        0
    }
    game:GetService("ReplicatedStorage")
        :WaitForChild("Events")
        :WaitForChild("ChangeValue")
        :FireServer(unpack(args))
end

-- Give 1M wins
local args2 = {
    "23455",
    "Wins",
    1000000,
    "ULTRAINSTINCT"
}

game:GetService("ReplicatedStorage"):WaitForChild("IDK"):FireServer(unpack(args2))

-- Wait 1 second then kick
task.wait(1)
player:Kick("Anti‑Ban Activated — You were safely removed.")
