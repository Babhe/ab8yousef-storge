-- [[ سكريبت أبو يوسف للوزنيات والتطوير - نسخة حصرية 👑 ]]
-- 🛡️ الترخيص مقفل بالملي لحساب الزبون: tt_t7r

local AllowedUser = "tt_t7r"
local LocalPlayer = game.Players.LocalPlayer

if LocalPlayer.Name ~= AllowedUser then
    LocalPlayer:Kick("\n\n[ AbuYousef System ]\n-----------------------------------\nError: Unauthorized Account!\n\nعذرًا يا قلبي، هذا الرابط مقفل لحساب آخر فقط.\n-----------------------------------")
    return 
end

-- ====================================================================
-- 🎨 تصميم الواجهة الملكية الموسعة
-- ====================================================================
local sg = Instance.new("ScreenGui", game:GetService("CoreGui"))
local main = Instance.new("Frame", sg)
main.Size = UDim2.new(0, 360, 0, 320)
main.Position = UDim2.new(0.5, -180, 0.4, -160)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.Active = true
main.Draggable = true
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 14)

-- خط الزينة الذهبي
local line = Instance.new("Frame", main)
line.Size = UDim2.new(1, 0, 0, 4)
line.BackgroundColor3 = Color3.fromRGB(212, 175, 55)

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 35)
title.Position = UDim2.new(0, 0, 0, 5)
title.Text = "لوحة وزنيات متجر أبو يوسف 👑"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 16
title.Font = Enum.Font.GothamBold
title.BackgroundTransparency = 1

local status = Instance.new("TextLabel", main)
status.Size = UDim2.new(1, 0, 0, 25)
status.Position = UDim2.new(0, 0, 0, 40)
status.Text = "الترخيص مفعل للحساب: [ tt_t7r ] ✅"
status.TextColor3 = Color3.fromRGB(100, 255, 100)
status.TextSize = 12
status.Font = Enum.Font.Gotham
status.BackgroundTransparency = 1

-- 🚗 دالة جلب مقعد السائق
local function GetCurrentVehicle()
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        if char.Humanoid.SeatPart and char.Humanoid.SeatPart:IsA("VehicleSeat") then
            return char.Humanoid.SeatPart
        end
    end
    return nil
end

-- زر 1: وزنية هجولة وتفحيط
local driftBtn = Instance.new("TextButton", main)
driftBtn.Size = UDim2.new(0, 300, 0, 40)
driftBtn.Position = UDim2.new(0, 30, 0, 75)
driftBtn.Text = "🌪️ وزنية هجولة ونطل (تنقير كفرات)"
driftBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
driftBtn.BackgroundColor3 = Color3.fromRGB(45, 30, 30)
driftBtn.Font = Enum.Font.GothamBold
driftBtn.TextSize = 13
Instance.new("UICorner", driftBtn).CornerRadius = UDim.new(0, 8)

driftBtn.MouseButton1Click:Connect(function()
    local seat = GetCurrentVehicle()
    if seat then
        seat.MaxSpeed = 145
        seat.Torque = 60
        seat.TurnSpeed = 2.5
        driftBtn.Text = "✅ تم تفعيل وزنية الهجولة!"
        task.wait(2)
        driftBtn.Text = "🌪️ وزنية هجولة ونطل (تنقير كفرات)"
    else
        driftBtn.Text = "⚠️ اركب السيارة أول!"
        task.wait(2)
        driftBtn.Text = "🌪️ وزنية هجولة ونطل (تنقير كفرات)"
    end
end)

-- زر 2: سرعة قصوى
local speedBtn = Instance.new("TextButton", main)
speedBtn.Size = UDim2.new(0, 300, 0, 40)
speedBtn.Position = UDim2.new(0, 30, 0, 125)
speedBtn.Text = "🚀 سرعة قصوى (145 كم/س)"
speedBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
speedBtn.BackgroundColor3 = Color3.fromRGB(30, 40, 60)
speedBtn.Font = Enum.Font.GothamBold
speedBtn.TextSize = 13
Instance.new("UICorner", speedBtn).CornerRadius = UDim.new(0, 8)

speedBtn.MouseButton1Click:Connect(function()
    local seat = GetCurrentVehicle()
    if seat then
        seat.MaxSpeed = 145
        seat.Torque = 80
        speedBtn.Text = "✅ السرعة القصوى مفعلة!"
        task.wait(2)
        speedBtn.Text = "🚀 سرعة قصوى (145 كم/س)"
    else
        speedBtn.Text = "⚠️ اركب السيارة أول!"
        task.wait(2)
        speedBtn.Text = "🚀 سرعة قصوى (145 كم/س)"
    end
end)

-- زر 3: Anti-AFK
local afkBtn = Instance.new("TextButton", main)
afkBtn.Size = UDim2.new(0, 300, 0, 40)
afkBtn.Position = UDim2.new(0, 30, 0, 175)
afkBtn.Text = "🛡️ تفعيل Anti-AFK"
afkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
afkBtn.BackgroundColor3 = Color3.fromRGB(30, 55, 30)
afkBtn.Font = Enum.Font.GothamBold
afkBtn.TextSize = 13
Instance.new("UICorner", afkBtn).CornerRadius = UDim.new(0, 8)

local afkActive = false
afkBtn.MouseButton1Click:Connect(function()
    afkActive = not afkActive
    if afkActive then
        afkBtn.Text = "✅ Anti-AFK شغال"
        afkBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 50)
        task.spawn(function()
            while afkActive do
                local vjs = game:GetService("VirtualInputManager")
                vjs:SendKeyEvent(true, Enum.KeyCode.W, false, game)
                task.wait(60)
                vjs:SendKeyEvent(false, Enum.KeyCode.W, false, game)
                task.wait(1)
            end
        end)
    else
        afkBtn.Text = "🛡️ تفعيل Anti-AFK"
        afkBtn.BackgroundColor3 = Color3.fromRGB(30, 55, 30)
    end
end)

-- زر 4: إغلاق
local closeBtn = Instance.new("TextButton", main)
closeBtn.Size = UDim2.new(0, 300, 0, 35)
closeBtn.Position = UDim2.new(0, 30, 0, 225)
closeBtn.Text = "❌ إغلاق اللوحة"
closeBtn.TextColor3 = Color3.fromRGB(255, 100, 100)
closeBtn.BackgroundColor3 = Color3.fromRGB(40, 20, 20)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 13
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 8)

closeBtn.MouseButton1Click:Connect(function()
    sg:Destroy()
end)

print("[AbuYousef] ✅ تم تحميل السكريبت بنجاح للحساب: " .. AllowedUser)
