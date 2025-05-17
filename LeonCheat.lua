local colors = {
	-- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(150, 72, 148),
	-- Цвет фона в правой части UI
	Background = Color3.fromRGB(15,15,15),
	-- Цвет фона в левой части UI
    Header = Color3.fromRGB(15,15,15),
	-- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
	-- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local character = game.Players.LocalPlayer.Character

-- Создать окно UI
local Window = Library.CreateLib("Leon Roblox Cheat", "colors")

-- Секция
local Tab = Window:NewTab("Главное")
local Tab2 = Window:NewTab("Игрок")
local Tab3 = Window:NewTab("Гравитация")

-- Подсекция
local Section = Tab:NewSection("Читы")
local Section2 = Tab2:NewSection("Настройки и читы")
local Section3 = Tab3:NewSection("Выбрать гравитацию")

-- Кнопка
Section:NewButton("ESP", "WallHack", function()
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
                    esp.Color3 = Color3.fromRGB(0,0,255)
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
end)

Section:NewButton("Полёт", "Гравитация прекрасная ;)", function()
game.Workspace.Gravity = 3
end)

Section2:NewButton("Бесконченые жизни", "ХП Прекрасно много ;)", function()
game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 9999999999
game.Players.LocalPlayer.Character.Humanoid.Health = 9999999999
end)

-- Слайдер
Section2:NewSlider("Скорость Игрока", "Изменить скорость игрока", 9000, 30, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- Переключатель
Section2:NewToggle("Сила прыжка", "Изменить силу прыжка", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 500
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

Section3:NewButton("Луна", "Гравитация луны ;)", function()
game.Workspace.Gravity = 1,62
end)

Section3:NewButton("Марс", "Гравитация марса ;)", function()
game.Workspace.Gravity = 3,73
end)

Section3:NewButton("Земля", "Обычная гравитация ;)", function()
game.Workspace.Gravity = 196,7
end)

Section3:NewButton("Космос", "Гравитация космоса ;)", function()
game.Workspace.Gravity = 0
end)

Section3:NewButton("Меркурий", "Гравитация меркурия ;)", function()
game.Workspace.Gravity = 3,7
end)
