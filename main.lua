-- main

VideoMode = {
	new = function(type, args)
		local self = { w = 1, h = 1, scale = 1 }
		for k, v in pairs(args) do
			self[k] = v
		end
		setmetatable(self, type)
		type.__index = type
		return self
	end,
}

RenderTarget = {
	new = function(type, args)
		local self = {}
		setmetatable(self, type)
		type.__index = type
		return self
	end,
	clear = function(self, color)
		local color = color or colors.black
		
	end,
}

RenderWindow = {
	new = function(type, args)
		local self = {}
		setmetatable(self, type)
		type.__index = type
		self.videomode = args["videomode"] or VideoMode:new()
		return self
	end,
	isOpen = function(self)
		
	end,
}



