local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/YoshiroScripts/Wspwsp/refs/heads/main/Decode", true))()

local playerNickname = game.Players.LocalPlayer.DisplayName

local window = library:AddWindow("💠 FAH | Paid Hello น้องบ่าว " .. playerNickname, {
    main_color = Color3.fromRGB(60, 140, 255),
    min_size = Vector2.new(700, 700),
    can_resize = true,
})

local AutoFarm = window:AddTab("☁️ ออโต้ฟาม")
local folder1 = AutoFarm:AddFolder("⚡ ฟังก์ชันหลัก (OP)")

local StrengthTiers = {
    {Threshold = 1e24, Name = "1Sp",   Pos = Vector3.new(-2096, 1485.5, -2170)},
    {Threshold = 1e23, Name = "100sx", Pos = Vector3.new(-2333, 541.5, 1793)},
    {Threshold = 1e21, Name = "1sx",   Pos = Vector3.new(2299, 258.5, -622)},
    {Threshold = 1e20, Name = "100Qn", Pos = Vector3.new(3865, 769.5, -1246)},
    {Threshold = 1e18, Name = "1Qn",   Pos = Vector3.new(3873, 135, 858)},
    {Threshold = 5e16, Name = "50qd",  Pos = Vector3.new(802, 207.5, -988)},
    {Threshold = 2.5e14, Name = "250T", Pos = Vector3.new(4336, 142.5, -654)},
    {Threshold = 5e12,  Name = "5T",    Pos = Vector3.new(604, 653.5, 434)},
    {Threshold = 1e11,  Name = "100B",  Pos = Vector3.new(1845, 141.5, 97)},
    {Threshold = 1e9,   Name = "1B",    Pos = Vector3.new(720, 152.5, 931)},
    {Threshold = 1e8,   Name = "100M",  Pos = Vector3.new(-50, 64.5, -1304)},
    {Threshold = 1e7,   Name = "10M",   Pos = Vector3.new(-2245, 618.5, 530)},
    {Threshold = 1e6,   Name = "1M",    Pos = Vector3.new(-919, 82.5, 145)},
    {Threshold = 1e5,   Name = "100k",  Pos = Vector3.new(-1252, 59.5, 488)},
    {Threshold = 1e4,   Name = "10k",   Pos = Vector3.new(1340, 154.5, -128)},
    {Threshold = 100,   Name = "100",   Pos = Vector3.new(-9, 65.5, 130)}
}

local _G_AutoTierFarm = false
folder1:AddSwitch("Auto STR TP (Strength) ", function(bool)
    _G_AutoTierFarm = bool
    


    if _G_AutoTierFarm then
        task.spawn(function()
            while _G_AutoTierFarm do
                pcall(function()
                    local player = game.Players.LocalPlayer
                    local currentStrength = player.Stats["1"].Value 
                    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                    
                    if hrp then

                        
                        for _, tier in ipairs(StrengthTiers) do
                            if currentStrength >= tier.Threshold then
                                hrp.CFrame = CFrame.new(tier.Pos)
                                break
                            end
                        end
                        local args = {[1] = "Train", [2] = 1}
                        game:GetService("ReplicatedStorage"):WaitForChild("shared"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                    end
                end)
                task.wait(0.1)
            end

        end)
    end
end)


local _G_AutoPunch = false
folder1:AddSwitch("Auto Punch (หมัด)", function(bool)
    _G_AutoPunch = bool
    if _G_AutoPunch then
        task.spawn(function()
            while _G_AutoPunch do
                pcall(function()
                    local args = {[1] = "Train", [2] = 1}
                    game:GetService("ReplicatedStorage"):WaitForChild("shared"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                end)
                task.wait()
            end
        end)
    end
end)


local _G_AutoShield = false
folder1:AddSwitch("Auto Durabiility (เกราะ)", function(bool)
    _G_AutoShield = bool
    if _G_AutoShield then
        task.spawn(function()
            while _G_AutoShield do
                pcall(function()
                    local args = {[1] = "Train", [2] = 2}
                    game:GetService("ReplicatedStorage"):WaitForChild("shared"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                end)
                task.wait()
            end
        end)
    end
end)


local _G_AutoChakra = false
folder1:AddSwitch("Auto Chakra (จักระ)", function(bool)
    _G_AutoChakra = bool
    if _G_AutoChakra then
        task.spawn(function()
            while _G_AutoChakra do
                pcall(function()
                    local args = {[1] = "Train", [2] = 3}
                    game:GetService("ReplicatedStorage"):WaitForChild("shared"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                end)
                task.wait()
            end
        end)
    end
end)


local _G_AutoSword = false
folder1:AddSwitch("Auto Sword (ดาบ)", function(bool)
    _G_AutoSword = bool
    if _G_AutoSword then
        task.spawn(function()
            while _G_AutoSword do
                pcall(function()
                    local args = {[1] = "Train", [2] = 4}
                    game:GetService("ReplicatedStorage"):WaitForChild("shared"):WaitForChild("Remotes"):WaitForChild("Re
