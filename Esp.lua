-- Створюємо інтерфейс
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Вікно
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.Visible = false -- Спочатку вікно приховане
frame.Parent = screenGui

-- Кнопка "Відкрити"
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 100, 0, 50)
openButton.Position = UDim2.new(0, 10, 0, 10) -- Розташування в лівому верхньому кутку
openButton.Text = "Відкрити"
openButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
openButton.TextColor3 = Color3.new(1, 1, 1)
openButton.Parent = screenGui

-- Кнопка "Закрити"
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.8, 0, 0.4, 0)
closeButton.Position = UDim2.new(0.1, 0, 0.1, 0)
closeButton.Text = "Закрити"
closeButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Parent = frame

-- Обробка кнопки "Відкрити"
openButton.MouseButton1Click:Connect(function()
    frame.Visible = true -- Показуємо вікно
    openButton.Visible = false -- Ховаємо кнопку "Відкрити"
end)

-- Обробка кнопки "Закрити"
closeButton.MouseButton1Click:Connect(function()
    frame.Visible = false -- Ховаємо вікно
    openButton.Visible = true -- Показуємо кнопку "Відкрити"
end)
