-- SCRIPT LICENSED TO Khaled 👑
local AllowedUser = "Khaled"
local LocalPlayer = game.Players.LocalPlayer

if LocalPlayer.Name ~= AllowedUser then
    LocalPlayer:Kick("\n\n[ AbuYousef System ]\n-----------------------------------\nError: Unauthorized Account!\n-----------------------------------")
    return 
end

-- كود السكريبت الأساسي يبدأ هنا
print("Script Loaded Successfully for " .. AllowedUser)
