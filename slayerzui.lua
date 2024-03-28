local SlayerzLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/BetaLibrary.script"))()

local Name = "SlayerzUI" -- Name Hub
local Description = "This ui made by Slayerz - API" -- Description in script
local Image = "rbxassetid://15110884615" -- Image Id
local Color = Color3.fromRGB(255, 0, 0) -- Color in UI
local Window = SlayerzLibrary:Window(Name,Description,Image,Color) -- Create Window

local Tab1 = Window:Tab("Tab 1") -- Tab Name
local Tab2 = Window:Tab("Tab 2") -- Tab Name

local Section = Tab1:Section("- Section 1 -","Left") -- Section on Left
local Section2 = Tab1:Section("- Section 2 -","Right") -- Section on Right
local Section3 = Tab2:Section("- Section 3 -","Left") -- Section on Left
local Section4 = Tab2:Section("- Section 4 -","Right") -- Section on Right

-- Section 1

Section:Label("This is Label")

Section:Button("Button",function()
    print("Click") -- Callback Function
end)

Section:Toggle("Toggle",false,function(v)
    print("Toggle - "..tostring(v)) -- Callback Function "v" is bool value
end)

Section:Textbox("Text Box","Value ?",function(v)
    print("Input - "..v) -- Callback Function "v" is string value
end)

-- Section 2

Section2:Label("This is Label")

local List1 = {"ABC","XYZ","1","2"}
Section2:Dropdown("Dropdown",List1,{"Select Dropdown"},function(v)
    print("Select - "..v) -- Callback Function "v" is string value
end)

Section2:Slider("Slider",1,100,25,function(v)
    print("Slider to - "..tostring(v)) -- Callback Function "v" is number value
end)

-- Section 3

Section3:Label("This is Label")

Section3:Button("Button",function()
    print("Click") -- Callback Function
end)

Section3:Toggle("Toggle",false,function(v)
    print("Toggle - "..tostring(v)) -- Callback Function "v" is bool value
end)

Section3:Textbox("Text Box","Value ?",function(v)
    print("Input - "..v) -- Callback Function "v" is string value
end)

-- Section 4

Section4:Label("This is Label")

local List2 = {"abc","xyz","4","3"}
Section4:Dropdown("Dropdown",List2,{"Select Dropdown"},function(v)
    print("Select - "..v) -- Callback Function "v" is string value
end)

Section4:Slider("Slider",1,100,25,function(v)
    print("Slider to - "..tostring(v)) -- Callback Function "v" is number value
end)
