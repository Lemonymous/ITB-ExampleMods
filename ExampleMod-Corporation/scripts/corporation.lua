
-- valid vanilla corporations are: "Corp_Grass", "Corp_Desert", "Corp_Snow", "Corp_Factory"

-- create new corporation, with internal name "meridia", based on corporation "Corp_Grass"
local corporation = modApi:newCorporation("meridia", "Corp_Grass")

-- display name of corporation
corporation.Name = "Meridia Institute"

-- name of the corporation in dialogs
corporation.Bark_Name = "Meridia"

-- display description of the corporation
corporation.Description = "The environment on this island is unrelenting. Meridia set up to study these rare conditions."

-- specify which buildings will give power, core and reputation rewards for missions for this corporation
corporation.PowAssets = { "Str_Power", "Str_Nimbus", "Str_Battery","Str_Power" }
corporation.TechAssets = { "Str_Robotics","Str_Research" }
corporation.RepAssets = { "Str_Bar", "Str_Clinic" }

-- specify which high and low threat missions will be available for this corporation
corporation.Missions_High = {"Mission_Volatile", "Mission_Train", "Mission_Satellite","Mission_Tanks"}
corporation.Missions_Low = {"Mission_Survive","Mission_Airstrike","Mission_Artillery", "Mission_Mines", "Mission_Dam", "Mission_Tides"}

-- set tileset for the corporation
corporation:SetTileset("grass")

-- create new ceo with internal name "Meridia CEO", and display name "Amelie Lacroix"
local CEO_meridia = CreatePilotPersonality("Meridia CEO", "Amelie Lacroix")

-- set ceo for corporation with display image "img/corp/ceo.png" relative to mod directory
corporation:SetCEO("img/corp/ceo.png", CEO_meridia)

-- set ceo office with large image "img/corp/office.png" and small image "img/corp/office_small.png", both relative to mod directory
corporation:SetOffice("img/corp/office.png", "img/corp/office_small.png")
