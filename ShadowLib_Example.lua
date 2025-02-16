local library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoDollManB/gui/refs/heads/main/lib.lua"))()

local Main = library:CreateWindow("Main","Blood")

local tab = Main:CreateTab("Main")
local tab2 = Main:CreateTab("ESP")

tab:CreateButton("Hi",function()
print("clicked")
end)

tab:CreateToggle("Farm",function(a)
print(a)
end)

tab:CreateSlider("Wow",1,16,function(a)
print(a)
end)

tab:CreateCheckbox("Aimbot",function(a)
print(a)
end)

tab:CreateDropdown("Word",{"Sung","Jin","Woo"},function(a)
print(a)
end)

tab2:CreateButton("Hello",function()
print("clicked")
end)

tab:Show()
