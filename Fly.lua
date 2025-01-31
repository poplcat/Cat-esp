-- Отримуємо гравця та його елементи
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Налаштування швидкості польоту
local flySpeed = 50
local flying = false

-- Створюємо BodyVelocity для польоту
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.Velocity = Vector3.new(0, 0, 0)
bodyVelocity.MaxForce = Vector3.new(0, 0, 0)
bodyVelocity.Parent = rootPart

-- Функція для польоту
local function startFlying()
    flying = true
    humanoid:ChangeState(Enum.HumanoidStateType.Flying) -- Змінюємо стан на "Flying"
    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge) -- Дозволяємо рух

    while flying do
        local direction = Vector3.new()

        -- Керування за допомогою віртуальних кнопок
        if forwardButton.Active then
            direction = direction + rootPart.CFrame.LookVector
        end
        if backwardButton.Active then
            direction = direction - rootPart.CFrame.LookVector
        end
        if leftButton.Active then
            direction = direction - rootPart.CFrame.RightVector
        end
        if rightButton.Active then
            direction = direction + rootPart.CFrame.RightVector
        end
        if upButton.Active then
            direction = direction + Vector3.new(0, 1, 0)
        end
        if downButton.Active then
            direction = direction + Vector3.new(0, -1, 0)
        end

        -- Застосовуємо швидкість польоту
        bodyVelocity.Velocity = direction.Unit * flySpeed
        game:GetService("RunService").Heartbeat:Wait()
    end

    -- Зупиняємо політ
    bodyVelocity.MaxForce = Vector3.new(0, 0, 0)
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    humanoid:ChangeState(Enum.HumanoidStateType.GettingUp) -- Повертаємо стан до нормального
end

-- Функція для зупинки польоту
local function stopFlying()
    flying = false
end

-- Створюємо GUI для мобільних кнопок
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Кнопка "Fly" (вмикання/вимикання польоту)
local flyButton = Instance.new("TextButton")
flyButton.Size = UDim2.new(0.2, 0, 0.1, 0)
flyButton.Position = UDim2.new(0.7, 0, 0.8, 0)
flyButton.Text = "Fly"
flyButton.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
flyButton.TextColor3 = Color3.new(1, 1, 1)
flyButton.Parent = screenGui

-- Віртуальні кнопки для керування
local forwardButton = Instance.new("TextButton")
forwardButton.Size = UDim2.new(0.1, 0, 0.1, 0)
forwardButton.Position = UDim2.new(0.45, 0, 0.7, 0)
forwardButton.Text = "W"
forwardButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
forwardButton.TextColor3 = Color3.new(1, 1, 1)
forwardButton.Visible = false -- Спочатку прихована
forwardButton.Active = false
forwardButton.Parent = screenGui

local backwardButton = Instance.new("TextButton")
backwardButton.Size = UDim2.new(0.1, 0, 0.1, 0)
backwardButton.Position = UDim2.new(0.45, 0, 0.85, 0)
backwardButton.Text = "S"
backwardButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
backwardButton.TextColor3 = Color3.new(1, 1, 1)
backwardButton.Visible = false -- Спочатку прихована
backwardButton.Active = false
backwardButton.Parent = screenGui

local leftButton = Instance.new("TextButton")
leftButton.Size = UDim2.new(0.1, 0, 0.1, 0)
leftButton.Position = UDim2.new(0.3, 0, 0.85, 0)
leftButton.Text = "A"
leftButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
leftButton.TextColor3 = Color3.new(1, 1, 1)
leftButton.Visible = false -- Спочатку прихована
leftButton.Active = false
leftButton.Parent = screenGui

local rightButton = Instance.new("TextButton")
rightButton.Size = UDim2.new(0.1, 0, 0.1, 0)
rightButton.Position = UDim2.new(0.6, 0, 0.85, 0)
rightButton.Text = "D"
rightButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
rightButton.TextColor3 = Color3.new(1, 1, 1)
rightButton.Visible = false -- Спочатку прихована
rightButton.Active = false
rightButton.Parent = screenGui

local upButton = Instance.new("TextButton")
upButton.Size = UDim2.new(0.1, 0, 0.1, 0)
upButton.Position = UDim2.new(0.8, 0, 0.7, 0)
upButton.Text = "↑"
upButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
upButton.TextColor3 = Color3.new(1, 1, 1)
upButton.Visible = false -- Спочатку прихована
upButton.Active = false
upButton.Parent = screenGui

local downButton = Instance.new("TextButton")
downButton.Size = UDim2.new(0.1, 0, 0.1, 0)
downButton.Position = UDim2.new(0.8, 0, 0.85, 0)
downButton.Text = "↓"
downButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
downButton.TextColor3 = Color3.new(1, 1, 1)
downButton.Visible = false -- Спочатку прихована
downButton.Active = false
downButton.Parent = screenGui

-- Обробка натискання кнопки "Fly"
flyButton.MouseButton1Click:Connect(function()
    if not flying then
        startFlying()
        flyButton.Text = "Stop Fly"
        -- Показуємо віртуальні кнопки
        forwardButton.Visible = true
        backwardButton.Visible = true
        leftButton.Visible = true
        rightButton.Visible = true
        upButton.Visible = true
        downButton.Visible = true
    else
        stopFlying()
        flyButton.Text = "Fly"
        -- Ховаємо віртуальні кнопки
        forwardButton.Visible = false
        backwardButton.Visible = false
        leftButton.Visible = false
        rightButton.Visible = false
        upButton.Visible = false
        downButton.Visible = false
    end
end)

-- Обробка натискання віртуальних кнопок
forwardButton.MouseButton1Down:Connect(function() forwardButton.Active = true end)
forwardButton.MouseButton1Up:Connect(function() forwardButton.Active = false end)

backwardButton.MouseButton1Down:Connect(function() backwardButton.Active = true end)
backwardButton.MouseButton1Up:Connect(function() backwardButton.Active = false end)

leftButton.MouseButton1Down:Connect(function() leftButton.Active = true end)
leftButton.MouseButton1Up:Connect(function() leftButton.Active = false end)

rightButton.MouseButton1Down:Connect(function() rightButton.Active = true end)
rightButton.MouseButton1Up:Connect(function() rightButton.Active = false end)

upButton.MouseButton1Down:Connect(function() upButton.Active = true end)
upButton.MouseButton1Up:Connect(function() upButton.Active = false end)

downButton.MouseButton1Down:Connect(function() downButton.Active = true end)
downButton.MouseButton1Up:Connect(function() downButton.Active = false end)
