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
local rareslice = {
	".....",
	".sss.",
	".sos.",
	".sss.",
	".....",
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
local mossboulder = {
	".....",
	".....",
	"..m..",
	".....",
	".....",
}

nodecore.boulder_params = {
	{prob = 255},
	{prob = 100},
	{prob = 255},
	{prob = 100},
	{prob = 200},
}

nodecore.boulder_schematic = nodecore.ezschematic(
	{
		["."] = {name = "air", prob = 0},
		s = {name = "nc_terrain:stone", prob = 255},
		c = {name = "nc_terrain:cobble", prob = 160},
		m = {name = "nc_nature:mossy_stone", prob = 255},
		o = {name = "nc_lode:ore", prob = 255},
	},
	{
		lowboulder,
		rareslice,
		midboulder,
		topboulder,
		mossboulder
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 255},
			{ypos = 2, prob = 100},
			{ypos = 3, prob = 225},
			{ypos = 4, prob = 100},
			{ypos = 5, prob = 200},
		}
	}
)

----------------------------------------
---------------TALLTREE-----------------
local root = {
	".....",
	".....",
	"..r..",
	".....",
	".....",
}
local trunk = {
	".....",
	".....",
	"..t..",
	".....",
	".....",
}
local bot = {
	".....",
	".ebe.",
	".btb.",
	".ebe.",
	".....",
}
local low = {
	".lll.",
	"lebel",
	"lbtbl",
	"lebel",
	".lll.",
}
local hi = {
	".lll.",
	"llell",
	"lebel",
	"llell",
	".lll.",
}
local top = {
	".....",
	".lll.",
	".lll.",
	".lll.",
	".....",
}

nodecore.talltree_params = {
	{},
	{},
	{},
	{},
	{},
	{},
	{
		prob = 160
	},
	{
		prob = 160
	},
	{
		leaves = 2,
		prob = 160
	},
	{
		leaves = 4
	},
	{
		leaves = 4,
		prob = 160
	},
	{
		leaves = 6,
		notrunk = true,
		prob = 160
	},
	{
		leaves = 2,
		notrunk = true
	}
}

nodecore.talltree_schematic = nodecore.ezschematic(
	{
		["."] = {name = "air", prob = 0},
		r = {name = "nc_tree:root", prob = 255, force_place = true},
		t = {name = "nc_tree:tree", prob = 255},
		b = {name = "nc_tree:leaves", param2 = 2, prob = 255},
		e = {name = "nc_tree:leaves", param2 = 1, prob = 255},
		l = {name = "nc_tree:leaves", prob = 240},
	},
	{
		root,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		bot,
		low,
		low,
		hi,
		top
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 255},
			{ypos = 2, prob = 160},
			{ypos = 3, prob = 160},
			{ypos = 4, prob = 160},
			{ypos = 5, prob = 160},
			{ypos = 6, prob = 160},
			{ypos = 7, prob = 160},
			{ypos = 8, prob = 100},
			{ypos = 9, prob = 100},
			{ypos = 10, prob = 255},
			{ypos = 11, prob = 160},
			{ypos = 12, prob = 160},
			{ypos = 13, prob = 255},
		}
	}
)

----------------------------------------
---------------Grand Tree---------------
local root = {
	"........",
	"........",
	"........",
	"...rr...",
	"...rr...",
	"........",
	"........",
	"........",
}
local trunk = {
	"........",
	"........",
	"........",
	"...tt...",
	"...tt...",
	"........",
	"........",
	"........",
}

local bot = {
	"........",
	"........",
	"..ebbe..",
	"..bttb..",
	"..bttb..",
	"..ebbe..",
	"........",
	"........",
}
local low = {
	"..llll..",
	".llllll.",
	"llebbell",
	"llbttbll",
	"llbttbll",
	"llebbell",
	".llllll.",
	"..llll..",
}
local hi = {
	"..llll..",
	".llllll.",
	"llleelll",
	"llebbell",
	"llebbell",
	"llleelll",
	".llllll.",
	"..llll..",
}
local top = {
	"........",
	"..llll..",
	".llllll.",
	".llllll.",
	".llllll.",
	".llllll.",
	"..llll..",
	"........",
}
nodecore.grandtree_params = {
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{
		prob = 160
	},
	{
		prob = 160
	},
	{
		leaves = 2,
		prob = 160
	},
	{
		leaves = 4
	},
	{
		leaves = 4,
		prob = 160
	},
	{
		leaves = 6,
		notrunk = true,
		prob = 160
	},
	{
		leaves = 2,
		notrunk = true
	}
}

nodecore.grandtree_schematic = nodecore.ezschematic(
	{
		["."] = {name = "air", prob = 0},
		r = {name = "nc_tree:root", prob = 255, force_place = true},
		t = {name = "nc_tree:tree", prob = 255},
		b = {name = "nc_tree:leaves", param2 = 2, prob = 255},
		e = {name = "nc_tree:leaves", param2 = 1, prob = 255},
		l = {name = "nc_tree:leaves", prob = 240},
	},
	{
		root,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		trunk,
		bot,
		low,
		low,
		hi,
		top
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 255},
			{ypos = 2, prob = 160},
			{ypos = 3, prob = 160},
			{ypos = 4, prob = 160},
			{ypos = 5, prob = 160},
			{ypos = 6, prob = 160},
			{ypos = 7, prob = 160},
			{ypos = 8, prob = 160},
			{ypos = 9, prob = 160},
			{ypos = 10, prob = 160},
			{ypos = 11, prob = 160},
			{ypos = 12, prob = 160},
			{ypos = 13, prob = 160},
			{ypos = 14, prob = 255},
			{ypos = 15, prob = 160},
			{ypos = 16, prob = 160},
			{ypos = 17, prob = 255},
		}
	}
)