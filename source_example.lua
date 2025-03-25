local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NoDollManB/gui/refs/heads/main/source.lua"))() --Library link

local Window = Library.CreateLib("TITLE", "DarkTheme") -- Create Window

local Tab = Window:NewTab("TabName") -- Create Tab

local Section = Tab:NewSection("Section Name") -- create Section

Section:NewLabel("LabelText") -- Create Label

label:UpdateLabel("New Text") -- Update Label

Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked") -- Create Button
end)

button:UpdateButton("New Text") -- Update Button

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end) -- Create Toggle

Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end) -- Create Slider

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end) -- Create KeyBind

Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end) -- Create DropDown

Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end) -- Create Colorpicker

-- Applying Custom Themes / Colors

local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

local Window = Library.CreateLib("TITLE", colors)


--Want to add fully customizable UI?

--Add this code in your section. This will create color pickers. Make sure you have added table with all the values of UI. then apply it to window. Like shown above.

for theme, color in pairs(themes) do
    Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
