-- Створюємо інтерфейс
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 150) -- Збільшили висоту для кнопок мови
frame.Position = UDim2.new(0.5, -100, 0.5, -75)
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.Parent = screenGui

-- Тексти для різних мов
local translations = {
    English = {
        welcome = "Welcome!",
        language = "Language",
        close = "Close"
    },
    Українська = {
        welcome = "Ласкаво просимо!",
        language = "Мова",
        close = "Закрити"
    },
    Русский = {
        welcome = "Добро пожаловать!",
        language = "Язык",
        close = "Закрыть"
    }
}

-- Поточна мова (за замовчуванням English)
local currentLanguage = "English"

-- Функція для оновлення тексту
local function updateText()
    local langData = translations[currentLanguage]
    welcomeText.Text = langData.welcome
    languageButton.Text = langData.language
    closeButton.Text = langData.close
end

-- Текст "Welcome"
local welcomeText = Instance.new("TextLabel")
welcomeText.Size = UDim2.new(0.8, 0, 0.2, 0)
welcomeText.Position = UDim2.new(0.1, 0, 0.1, 0)
welcomeText.Text = translations[currentLanguage].welcome
welcomeText.TextColor3 = Color3.new(1, 1, 1)
welcomeText.BackgroundTransparency = 1
welcomeText.Parent = frame

-- Кнопка для зміни мови
local languageButton = Instance.new("TextButton")
languageButton.Size = UDim2.new(0.8, 0, 0.2, 0)
languageButton.Position = UDim2.new(0.1, 0, 0.4, 0)
languageButton.Text = translations[currentLanguage].language
languageButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
languageButton.TextColor3 = Color3.new(1, 1, 1)
languageButton.Parent = frame

-- Кнопка "Закрити"
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.8, 0, 0.2, 0)
closeButton.Position = UDim2.new(0.1, 0, 0.7, 0)
closeButton.Text = translations[currentLanguage].close
closeButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Parent = frame

-- Обробка кнопки для зміни мови
languageButton.MouseButton1Click:Connect(function()
    if currentLanguage == "English" then
        currentLanguage = "Українська"
    elseif currentLanguage == "Українська" then
        currentLanguage = "Русский"
    else
        currentLanguage = "English"
    end
    updateText() -- Оновлюємо текст
end)

-- Обробка кнопки "Закрити"
closeButton.MouseButton1Click:Connect(function()
    frame.Visible = false -- Ховаємо вікно
end)
