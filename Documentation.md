# Slayerz UI
This documentation is for Slayerz Credit To The Owner

## Booting the Slayerz Library
```lua
local SlayerzLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/BetaLibrary.script"))()
```




## Creating a Slayerz Window
```lua
-- Window Setting
local Name = "SlayerzUI" -- Name Hub
local Description = "This ui made by Slayerz - API" -- Description in script
local Image = "rbxassetid://15110884615" -- Image Id
local Color = Color3.fromRGB(255, 0, 0) -- Color in UI
-- Create Window
local Window = SlayerzLibrary:Window(Name,Description,Image,Color)
```

## Creating a Tab
```lua
local Tab1 = Window:Tab("Tab 1") -- Tab Name
```

## Creating a Section
```lua
-- Create Section on Left Side
local Section = Tab1:Section("- Section 1 -","Left")
```

## Creating A Section 2
```lua
-- Create Section on Right Side
local Section2 = Tab1:Section("- Section 2 -","Right")
```

## Creating a Label
```lua
Section:Label("This is Label")
```

## Creating a Button
```lua
-- Text , Callback
Section:Button("Button",function()
    print("Click") -- Callback Function
end)
```

## Creating a Toggle
```lua
-- Text , Default [ true / false ] , Callback
Section:Toggle("Toggle",false,function(v)
    print("Toggle - "..tostring(v)) -- Callback Function "v" is bool value
end)
```

## Creating a Textbox
```lua
-- Text , HolderText , Callback
Section:Textbox("Text Box","Value ?",function(v)
    print("Input - "..v) -- Callback Function "v" is string value
end)
```

## Creating A Dropdown
```lua
-- Text , Dropdown List [ Table ] , Default [ Table ] , Callback
Section:Dropdown("Dropdown",{"ABC","XYZ","1","2"},{"Select Dropdown"},function(v)
    print("Select - "..v) -- Callback Function "v" is string value
end)
```

## Creating a Slider
```lua
-- Text , Min [ Num ] , Max [ Num ] , Default [ Num ] , Callback
Section:Slider("Slider",1,100,25,function(v)
    print("Slider to - "..tostring(v)) -- Callback Function "v" is number value
end)
```

## Creating a Mobile Toggle
```lua
-- Put this on top of script
local SlayerzUI_MobileToggle = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/MBToggle.script"))()
SlayerzUI_MobileToggle:Create("rbxassetid://15110884615") -- Image Id
```

## Creating a Notify
```lua
local SlayerzUI_Notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/Notification.script"))()
local NameHub = "Slayerz UI"
local Description = "This is Notification for Slayerz UI Library"
local Logo = "rbxassetid://15110884615"
local Color = Color3.fromRGB(255, 0, 0)
SlayerzUI_Notify:Notify(NameHub, Description, Logo, Color, 5)
```

## Change Label
```lua
-- Create Label with Variables name
local Label = Section:Label("Im Label")
Label:Change("This is new Text") -- Change into new text
```

## Update A Toggle
```lua
-- Create Toggle with Variables name
local Toggle = Section:Toggle("Im Toggle",false,function(v)
    print(tosting(v))
end)
Toggle:Update(true) -- Update to true / false
```

## Add Items In Dropdown
```lua
-- Create Dropdown with Variables name
local Dropdown = Section:Dropdown("Dropdown",{"a","b"},{"Select Dropdown"},function(v)
    print(v)
end)
Dropdown:Add("New item") -- Add Item in List
```

## Clear Items In Dropdown
```lua
-- Create Dropdown with Variables name
local Dropdown = Section:Dropdown("Dropdown",{"x","y"},{"Select Dropdown"},function(v)
    print(v)
end)
Dropdown:Clear() -- Clear All Items in List
```
