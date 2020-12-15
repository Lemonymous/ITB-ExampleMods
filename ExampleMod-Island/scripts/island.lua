
-- fetch corporation "meridia" if it exists
local corporation_meridia = modApi.corporations["meridia"]

-- fetch tileset "meridia" if it exists
local tileset_meridia = modApi.tilesets["meridia"]

-- create new island with internal name "meridia", based on island "desert"
local island = modApi:newIsland("meridia", "desert")

-- integration with ExampleMod-Corporation
if corporation_meridia then
	-- set the corporation for the island
	island:SetCorporation(corporation_meridia)
	
	-- integration with ExampleMod-Tileset
	if tileset_meridia then
		-- set the tileset for the corporation
		corporation_meridia:SetTileset(tileset_meridia)
	end
end

-- set path for island assets
island:SetIslandPath("img/island")

-- appends all assets in the location specified by SetIslandPath
island:AppendAssets()

-- quote from vanilla scripts/island.lua
--"this is bullshit to translate between high res zoomed in images and low res zoomed out"
island.Shift = Point(14,13)

-- can't remember what this does, but it is some kind of offset for one of the images
island.Magic = Point(145,102)

-- this is offset data for each region in an island.
-- if I remember correctly, it is
-- (image offset, text offset, and length of text)
-- wide regions can have a big last number, while thin
-- regions should have a smaller number to make the text wrap
island.Data = {
	RegionInfo(Point(13,105), Point(10,-45), 100),
	RegionInfo(Point(100,12), Point(0,-20), 300),
	RegionInfo(Point(98,78), Point(0,-20), 100),
	RegionInfo(Point(64,172), Point(10,-30), 100),
	RegionInfo(Point(172,92), Point(-10,-20), 100),
	RegionInfo(Point(172,172), Point(-10,-80), 100),
	RegionInfo(Point(263,138), Point(0,0), 300),
	RegionInfo(Point(277,209), Point(-20,-30), 300)
}

-- a list of which region connects to which other regions
-- determines which missions gets available when you complete a mission
island.Network = {
	{2,3},
	{2,4},
	{0,1,3,4},
	{0,2,5},
	{1,2,5,6},
	{3,4,6,7},
	{4,5,7},
	{5,6}
}
