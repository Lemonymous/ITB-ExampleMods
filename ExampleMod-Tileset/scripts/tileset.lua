
-- valid vanilla base tilesets: "grass", "sand", "snow", "acid", "volcano", "lava"

-- create new tileset, with internal name "meridia", based on tileset "grass"
local tileset = modApi:newTileset("meridia", "grass")

-- display name of the tileset in game
tileset.Climate = "Tropical"

-- set path for tileset assets
tileset:SetTilePath("img/tileset")

-- appends all assets in the location specified by SetTilePath
tileset:AppendAssets()

-- percentage chance of getting rain
tileset.RainChance = 70

-- percentage chance that a regular ground tile gets changed to the following
tileset.EnvironmentChance = {
	[TERRAIN_ACID] = 0,
	[TERRAIN_FOREST] = 30,
	[TERRAIN_SAND] = 10,
	[TERRAIN_ICE] = 0,
}
