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
                    game:GetService("ReplicatedStorage"):WaitForChild("shared"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                end)
                task.wait()
            end
        end)
    end
end)


local _G_AutoGem = false
folder1:AddSwitch("Auto Chikara (เก็บเพชร)", function(bool)
    _G_AutoGem = bool
    if _G_AutoGem then
        task.spawn(function()
            while _G_AutoGem do
                task.wait(0.5)
                pcall(function()
                    local Plr = game.Players.LocalPlayer
                    local Root = Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart")
                    local Scriptable = workspace:FindFirstChild("Scriptable")
                    local Folder = Scriptable and Scriptable:FindFirstChild("ChikaraBoxes")
                    if Root and Folder then
                        for _, Box in pairs(Folder:GetChildren()) do
                            if not _G_AutoGem then break end
                            if Box.Name == "ChikaraCrate" then
                                local ClickPart = Box:FindFirstChild("ClickBox")
                                local Detector = ClickPart and ClickPart:FindFirstChild("ClickDetector")
                                if ClickPart and Detector then
                                    local OriginalCFrame = ClickPart.CFrame
                                    ClickPart.CanCollide = false
                                    ClickPart.Transparency = 1 
                                    ClickPart.CFrame = Root.CFrame * CFrame.new(0, -15, 0)
                                    task.wait(0.1)
                                    fireclickdetector(Detector)
                                    ClickPart.CFrame = OriginalCFrame
                                    ClickPart.Transparency = 0
                                    break
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
end)


local _G_AutoBoss = false
local Vim = game:GetService("VirtualInputManager")
folder1:AddSwitch("Auto Boss (คุรามะ) ปรับ Fly ก่อนแล้วก็แนะนำผลแสงกับชินระเท่านั้น!!", function(bool)
    _G_AutoBoss = bool
    if _G_AutoBoss then
        task.spawn(function()
            while _G_AutoBoss do
                pcall(function()
                    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
                    hrp.CFrame = CFrame.new(2248, 3244, 850)
                    Vim:SendKeyEvent(true, Enum.KeyCode.Seven, false, game)
                    task.wait(0.05)
                    Vim:SendKeyEvent(false, Enum.KeyCode.Seven, false, game)
                    Vim:SendKeyEvent(true, Enum.KeyCode.Z, false, game)
                    task.wait(0.02)
                    Vim:SendKeyEvent(false, Enum.KeyCode.Z, false, game)
                end)
                task.wait(0.1)
            end
        end)
    end
end)


local TP = window:AddTab("🌌 จุดวาร์ป")

TP:AddButton("📍 จุดสุ่มโทเค่นดาวกระจาย (1k)", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14, 62.5, -453)
end)

TP:AddButton("📍 จุดสุ่มโทเค่น Nen (1M)", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1098, 61.5, -132)
end)

TP:AddButton("📍 จุดสุ่มโทเค่น Soul (1B)", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(315, -155.5, -2083)
end)

TP:AddButton("📍 จุดสุ่มโทเค่น Saiyen (1qd)", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2254, 618.5, 512)
end)

TP:AddButton("📍 จุดสุ่มโทเค่น Hero (1Qn)", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1250, 141.5, -93)
end)

local folder2 = TP:AddFolder("🏠 จุดสุ่มของและบ้าน")

folder2:AddButton("กลับบ้าน", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, 80.5, 3)
end)

folder2:AddButton("จุดสุ่มตัวช่วย 5k", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(39, 105.5, 26)
end)

folder2:AddButton("จุดสุ่มตัวช่วย 15k", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(512, 62.5, -298)
end)

folder2:AddButton("จุดสุ่มตู้วาเลนไทน์", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-60, 105.5, 32)
end)

folder2:AddButton("จุดสุ่มสแตน", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(151, 62.5, -224)
end)

folder2:AddButton("จุดสุ่มเนตรวงแหวน", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(844, 141.5, 813)
end)


local Settings = window:AddTab("⚙️ ตั้งค่า")


Settings:AddButton("🚀 FPS Boost (ลดแลค)", function()
    pcall(function()
        local Lighting = game:GetService("Lighting")
        Lighting.GlobalShadows = false
        Lighting.FogEnd = 9e9
        Lighting.Brightness = 0
        

        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
                v.Material = Enum.Material.SmoothPlastic
                v.Reflectance = 0
                v.CastShadow = false
            elseif v:IsA("Decal") or v:IsA("Texture") or v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v:Destroy()
            end
        end
    end)
end)

Settings:AddSwitch("⚡ 300 Speed", function(state)
    _G_SpeedLoop = state
    if _G_SpeedLoop then
        task.spawn(function()
            while _G_SpeedLoop do
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 300
                end)
                task.wait()
            end
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            end)
        end)
    else
        _G_SpeedLoop = false
    end
end)

Settings:AddSwitch("🛡️ Anti AFK", function(state)
    _G_AntiAFK = state
    if _G_AntiAFK then
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            if _G_AntiAFK then
                vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                task.wait(1)
                vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end
        end)
    else
        _G_AntiAFK = false
    end
end)    if _G_AutoTierFarm then
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
