-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()

----------------------------------------
--------------Fallen Logs---------------
local fallen = {
	".....",
	"..f..",
	"..f..",
	"..f..",
	".....",
}

nodecore.deadwood_params = {
	{},
}

nodecore.deadwood_schematic = nodecore.ezschematic(
	{
		["."] = {name = "air", prob = 0},
		f = {name = "nc_nature:decayed_log", param2 = 7, prob = 255},
	},
	{
		fallen,
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 255},
		}
	}
)

----------------------------------------------------------------------
---------------BOULDER---------------------------------

local lowboulder = {
	".....",
	"csss.",
	".sss.",
	".sss.",
	"..c..",
}
local midboulder = {
	".....",
	"..s..",
	".ssc.",
	"..s..",
	".....",
}
local topboulder = {
	".....",
	"..c..",
	".ss..",
	".....",
	".....",
}

nodecore.boulder_params = {
	{},
	{},
	{prob = 160}
}

nodecore.boulder_schematic = nodecore.ezschematic(
	{
		["."] = {name = "air", prob = 0},
		s = {name = "nc_terrain:stone", prob = 255},
		c = {name = "nc_terrain:cobble", prob = 160},
	},
	{
		lowboulder,
		midboulder,
		topboulder,
		topboulder
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 255},
			{ypos = 2, prob = 160},
			{ypos = 3, prob = 160},
			{ypos = 4, prob = 160},
		}
	}
)

