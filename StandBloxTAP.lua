local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local character = game.Players.LocalPlayer.Character

-- Создать окно UI
local Window = Library.CreateLib("StandBlox TAP", "RJTheme2")

-- Секция
local Tab = Window:NewTab("Главное")
local Tab2 = Window:NewTab("Игрок")

-- Подсекция
local Section = Tab:NewSection("Читы")
local Section2 = Tab2:NewSection("Настройки и читы")

-- Кнопка
Section:NewButton("WallHack", "Подсвечивание игроков через стены", function()
    while wait(0.5) do
    for i, childrik in ipairs(workspace:GetDescendants()) do
        if childrik:FindFirstChild("Humanoid") then
            if not childrik:FindFirstChild("EspBox") then
                if childrik ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",childrik)
                    esp.Adornee = childrik
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 1)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(205,0,0)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end)

-- Слайдер
Section:NewSlider("Гравитация", "Изменить гравитацию", 196, 0, function(dds) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Workspace.Gravity = dds
    local grav = dds
end)

-- Переключатель
Section:NewToggle("Полёт", "Летать Fly", function(state)
    if state then
        game.Workspace.Gravity = 3
    else
        game.Workspace.Gravity = grav
    end
end)


Section2:NewButton("Бесконченые жизни", "ХП Прекрасно много ;)", function()
game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 99999999999999
game.Players.LocalPlayer.Character.Humanoid.Health = 999999999999
end)

-- Слайдер
Section2:NewSlider("Скорость Игрока", "Изменить скорость игрока", 400, 30, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
