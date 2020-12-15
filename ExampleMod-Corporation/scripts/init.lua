
local mod = {
	id = "lmn_example_mod_corporation",
	name = "ExampleMod-Corporation",
	version = "0.0.0",
	requirements = {}
}

local components = {
	"corporation"
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
