-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------

local modname = minetest.get_current_modname()

local fallen = {
	".....",
	"..f..",
	"..f..",
	"..f..",
	".....",
}

nodecore.deadwood_params = {
	{prob = 255},
}

nodecore.deadwood_schematic = nodecore.ezschematic(
	{
		["."] = {name = "air", prob = 0},
		f = {name = "nc_tree:log", prob = 255},
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
