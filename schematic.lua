-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------

local modname = minetest.get_current_modname()

local humus = {
	".....",
	"..h..",
	"..h..",
	"..h..",
	".....",
}
local deadwood = {
	".....",
	"..f..",
	"..f..",
	"..f..",
	".....",
}

nodecore.fallen_log_params = {
	{prob = 255},
	{prob = 255},
}

nodecore.fallen_log_schematic = nodecore.ezschematic(
	{
		["."] = {name = "air", prob = 0},
		h = {name = "nc_tree:humus", prob = 255, force_place = true},
		f = {name = "nc_nature:fallen_log", prob = 255},
	},
	{
		humus,
		deadwood
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 255},
			{ypos = 2, prob = 255},
		}
	}
)

----------------------------------------------------------------------

local bottom = {
	".....",
	".css.",
	".sss.",
	".sss.",
	".....",
}
local bulk = {
	".....",
	"..s..",
	".csc.",
	"..cc.",
	".....",
}
local cap = {
	".....",
	".....",
	"..s..",
	".....",
	".....",
}

nodecore.boulder_params = {
	{},
	{},
	{prob = 200},
}

nodecore.boulder_schematic = nodecore.ezschematic(
	{
		["."] = {name = "air", prob = 0},
		s = {name = "nc_terrain:stone", prob = 255, force_place = true},
		c = {name = "nc_terrain:cobble", prob = 255},
	},
	{
		bottom,
		bulk,
		cap
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 255},
			{ypos = 2, prob = 255},
			{ypos = 3, prob = 200},
		}
	}
)
