-- Створюємо інтерфейс
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 130) -- Розмір вікна
frame.Position = UDim2.new(0.5, -100, 0.5, -65) -- Центруємо вікно
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.Visible = false -- Спочатку вікно приховане
frame.Parent = screenGui

local buttonNormal = Instance.new("TextButton")
buttonNormal.Size = UDim2.new(0.8, 0, 0.25, 0)
buttonNormal.Position = UDim2.new(0.1, 0, 0.1, 0)
buttonNormal.Text = "Звичайний ESP"
buttonNormal.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
buttonNormal.TextColor3 = Color3.new(1, 1, 1)
buttonNormal.Parent = frame

local buttonRainbow = Instance.new("TextButton")
buttonRainbow.Size = UDim2.new(0.8, 0, 0.25, 0)
buttonRainbow.Position = UDim2.new(0.1, 0, 0.4, 0)
buttonRainbow.Text = "Радужний ESP"
buttonRainbow.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
buttonRainbow.TextColor3 = Color3.new(1, 1, 1)
buttonRainbow.Parent = frame

local buttonClose = Instance.new("TextButton")
buttonClose.Size = UDim2.new(0.8, 0, 0.25, 0)
buttonClose.Position = UDim2.new(0.1, 0, 0.7, 0)
buttonClose.Text = "Закрити"
buttonClose.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
buttonClose.TextColor3 = Color3.new(1, 1, 1)
buttonClose.Parent = frame

-- Кнопка для відкриття вікна
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 100, 0, 50)
openButton.Position = UDim2.new(0, 10, 0, 10) -- Розташування в лівому верхньому кутку
openButton.Text = "Відкрити"
openButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
openButton.TextColor3 = Color3.new(1, 1, 1)
openButton.Parent = screenGui

-- Змінні для управління ESP
local normalESPEnabled = false
local rainbowESPEnabled = false
local highlights = {} -- Тут зберігаємо всі Highlight об'єкти

-- Функція для створення ESP
local function createESP(player, isRainbow)
    local character = player.Character
    if character then
        local highlight = Instance.new("Highlight")
        highlight.Parent = character
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0

        if isRainbow then
            -- Радужний ESP
            local function updateColor()
                while highlight.Parent and rainbowESPEnabled do
                    local time = tick()
                    local r = math.sin(time * 2) * 0.5 + 0.5
                    local g = math.sin(time * 2 + 2) * 0.5 + 0.5
                    local b = math.sin(time * 2 + 4) * 0.5 + 0.5
                    highlight.FillColor = Color3.new(r, g, b)
                    highlight.OutlineColor = Color3.new(r, g, b)
                    wait(0.1)
                end
                highlight:Destroy() -- Видаляємо Highlight, якщо ESP вимкнено
            end
            coroutine.wrap(updateColor)()
        else
            -- Звичайний ESP
            highlight.FillColor = Color3.new(1, 0, 0) -- Червоний колір
            highlight.OutlineColor = Color3.new(1, 0, 0)
        end

        table.insert(highlights, highlight) -- Зберігаємо Highlight у таблицю
    end
end

-- Функція для видалення всіх Highlight об'єктів
local function removeAllESP()
    for _, highlight in pairs(highlights) do
        highlight:Destroy()
    end
    highlights = {} -- Очищаємо таблицю
end

-- Функція для додавання ESP всім гравцям
local function addESPToAllPlayers(isRainbow)
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            createESP(player, isRainbow)
        end
    end
end

-- Функція для додавання ESP новим гравцям
local function addESPToNewPlayers(isRainbow)
    game.Players.PlayerAdded:Connect(function(player)
        createESP(player, isRainbow)
    end)
end

-- Обробка кнопки "Звичайний ESP"
buttonNormal.MouseButton1Click:Connect(function()
    if normalESPEnabled then
        -- Вимикаємо ESP
        normalESPEnabled = false
        removeAllESP()
    else
        -- Вмикаємо ESP
        normalESPEnabled = true
        rainbowESPEnabled = false -- Вимикаємо радужний ESP
        removeAllESP()
        addESPToAllPlayers(false)
        addESPToNewPlayers(false)
    end
end)

-- Обробка кнопки "Радужний ESP"
buttonRainbow.MouseButton1Click:Connect(function()
    if rainbowESPEnabled then
        -- Вимикаємо ESP
        rainbowESPEnabled = false
        removeAllESP()
    else
        -- Вмикаємо ESP
        rainbowESPEnabled = true
        normalESPEnabled = false -- Вимикаємо звичайний ESP
        removeAllESP()
        addESPToAllPlayers(true)
        addESPToNewPlayers(true)
    end
end)

-- Обробка кнопки "Закрити"
buttonClose.MouseButton1Click:Connect(function()
    frame.Visible = false -- Ховаємо вікно
    openButton.Visible = true -- Показуємо кнопку "Відкрити"
end)

-- Обробка кнопки "Відкрити"
openButton.MouseButton1Click:Connect(function()
    frame.Visible = true -- Показуємо вікно
    openButton.Visible = false -- Ховаємо кнопку "Відкрити"
end)

local buttonfly = Instance.new("TextButton")
buttonfly.Size = UDim2.new(0.8, 0, 0.25, 0)
buttonfly.Position = UDim2.new(0.1, 0, 0.4, 0)
buttonflt.Text = "fly"
buttonfly.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
buttonfly.TextColor3 = Color3.new(1, 1, 1)
buttonfly.Parent = frame
end)
game:IsLoaded();
    		loadstring(game:HttpGet("https://raw.githubusercontent.com/poplcat/Cat-esp/refs/heads/main/Fly.lua"))();
		]]);
	end,
