
local mod = {
	id = "lmn_example_mod_island",
	name = "ExampleMod-Island",
	version = "0.0.0",
	-- this is not a list of mods required to run this mod,
	-- but a list of mods that will be initialized before this one if they exist
	requirements = {
		"lmn_example_mod_tileset",
		"lmn_example_mod_corporation"
	}
}

local components = {
	"island"
}

function mod:init()
	
	-- initialize components
	for _, subpath in ipairs(components) do
		local name = self.scriptPath .. subpath
		local comp = require(name)
		
		if type(comp) == 'table' and comp.init then
			comp:init()
		end
	end
end

function mod:load(options, version)
	
	-- load components
	for _, subpath in ipairs(components) do
		local name = self.scriptPath .. subpath
		local comp = require(name)
		
		if type(comp) == 'table' and comp.load then
			comp:load(self, options, version)
		end
	end
end

return mod
