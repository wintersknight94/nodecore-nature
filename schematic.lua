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
local groot = {
	"........",
	"........",
	"...qq...",
	"..qrrq..",
	"..qrrq..",
	"...qq...",
	"........",
	"........",
}
local gtrunk = {
	"........",
	"........",
	"........",
	"...tt...",
	"...tt...",
	"........",
	"........",
	"........",
}

local gbot = {
	"........",
	"........",
	"..ebbe..",
	"..bttb..",
	"..bttb..",
	"..ebbe..",
	"........",
	"........",
}
local glow = {
	"..llll..",
	".llllll.",
	"llebbell",
	"llbttbll",
	"llbttbll",
	"llebbell",
	".llllll.",
	"..llll..",
}
local ghi = {
	"..llll..",
	".llllll.",
	"llleelll",
	"llebbell",
	"llebbell",
	"llleelll",
	".llllll.",
	"..llll..",
}
local gtop = {
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
	{},												--1
	{},												--2
	{},												--3
	{},												--4
	{},												--5
	{},												--6
	{},												--7
	{},												--8
	{},												--9
	{},												--10
	{},												--11
	{prob = 160},									--12
	{prob = 160},									--13
	{leaves = 2,					prob = 160},	--14
	{leaves = 4},									--15
	{leaves = 4,					prob = 160},	--16
	{leaves = 6,	notrunk = true,	prob = 160},	--17
	{leaves = 2,	notrunk = true}					--18
}

nodecore.grandtree_schematic = nodecore.ezschematic(
	{
		["."] = {name = "air", prob = 0},
		r = {name = "nc_tree:root", prob = 255, force_place = true},
		q = {name = "nc_tree:root", prob = 100, force_place = true},
		t = {name = "nc_tree:tree", prob = 255},
		b = {name = "nc_tree:leaves", param2 = 2, prob = 255},
		e = {name = "nc_tree:leaves", param2 = 1, prob = 255},
		l = {name = "nc_tree:leaves", prob = 240},
	},
	{
		groot,		--1
		gtrunk,		--2
		gtrunk,		--3
		gtrunk,		--4
		gtrunk,		--5
		gtrunk,		--6
		gtrunk,		--7
		gtrunk,		--8
		gtrunk,		--9
		gtrunk,		--10
		gtrunk,		--11
		gtrunk,		--12
		gtrunk,		--13
		gbot,		--14
		glow,		--15
		glow,		--16
		ghi,		--17
		gtop		--18
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
			{ypos = 14, prob = 160},
			{ypos = 15, prob = 255},
			{ypos = 16, prob = 160},
			{ypos = 17, prob = 160},
			{ypos = 18, prob = 255},
		}
	}
)

----------------------------------------
--------------ANTIQUE TREE--------------
local aroot = {
	"................",
	"................",
	"................",
	"................",
	"................",
	"......qqqqq.....",
	".....qqrrqqq....",
	"....qqrrrrqq....",
	"....qqrrrrqqq...",
	"....qqqrrqqq....",
	"......qqqq......",
	"................",
	"................",
	"................",
	"................",
	"................",
}
local atrunkthic = {
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
	".......tt.......",
	"......tttt......",
	"......tttt......",
	".......tt.......",
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
}
local atrunkvar1 = {
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
	".......vv.......",
	"......vttt......",
	"......tttv......",
	".......vt.......",
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
}
local atrunkvar2 = {
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
	".......ttv......",
	"......vtt.......",
	"........v.......",
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
}
local atrunk = {
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
	".......tt.......",
	".......tt.......",
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
}
local abot = {
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
	"......ebbe......",
	"......bttb......",
	"......bttb......",
	"......ebbe......",
	"................",
	"................",
	"................",
	"................",
	"................",
	"................",
}
local alow = {
	"................",
	"................",
	"......l..l......",
	"....llllllll....",
	"...llllllllll...",
	"...llllllllll...",
	"..lllltbbtllll..",
	"...lllbttblll...",
	"...lllbttblll...",
	"..lllltbbtllll..",
	"...llllllllll...",
	"...llllllllll...",
	"....llllllll....",
	"......l..l......",
	"................",
	"................",
}
local ahi = {
	".....llllll.....",
	"...llllllllll...",
	"..llllllllllll..",
	".llllllllllllll.",
	".llltlllllltlll.",
	"llllllleelllllll",
	"llllllebbellllll",
	"lllllebbbbelllll",
	"lllllebbbbelllll",
	"llllllebbellllll",
	"llllllleelllllll",
	".llltlllllltlll.",
	".llllllllllllll.",
	"..llllllllllll..",
	"...llllllllll...",
	".....llllll.....",
}
local atop = {
	"................",
	"................",
	"......l..l......",
	"....llllllll....",
	"...llllllllll...",
	"...llllllllll...",
	"..llllllllllll..",
	"...llllllllll...",
	"...llllllllll...",
	"..llllllllllll..",
	"...llllllllll...",
	"...llllllllll...",
	"....llllllll....",
	"......l..l......",
	"................",
	"................",
}

nodecore.antiquetree_params = {
	{},												--1
	{},												--2
	{},												--3
	{},												--4
	{},												--5
	{},												--6
	{},												--7
	{},												--8
	{},												--9
	{},												--10
	{},												--11
	{prob = 160},									--12
	{prob = 160},									--13
	{leaves = 2,					prob = 160},	--14
	{leaves = 4},									--15
	{leaves = 4,					prob = 160},	--16
	{leaves = 6,	notrunk = true,	prob = 160},	--17
	{leaves = 2,	notrunk = true}					--18
}

nodecore.antiquetree_schematic = nodecore.ezschematic(
	{
		["."] = {name = "air", prob = 0},
		r = {name = "nc_tree:root", prob = 255, force_place = true},
		q = {name = "nc_tree:root", prob = 100, force_place = true},
		t = {name = "nc_tree:tree", prob = 255},
		v = {name = "nc_tree:tree", prob = 160},
--		h = {name = "nc_nature:branch", prob = 200},
		b = {name = "nc_tree:leaves", param2 = 2, prob = 255},
		e = {name = "nc_tree:leaves", param2 = 1, prob = 255},
		l = {name = "nc_tree:leaves", prob = 240},
	},
	{
		aroot,			--1
		atrunkthic,		--2
		atrunkthic,		--3
		atrunkvar1,		--4
		atrunkvar2,		--5
		atrunk,			--6
		atrunk,			--7
		atrunk,			--8
		atrunk,			--9
		atrunk,			--10
		atrunk,			--11
		atrunk,			--12
		atrunk,			--13
		abot,			--14
		alow,			--15
		alow,			--16
		ahi,			--17
		atop			--18
	},
	{
		yslice_prob = {
			{ypos = 1, prob = 255},
			{ypos = 2, prob = 255},
			{ypos = 3, prob = 255},
			{ypos = 4, prob = 225},
			{ypos = 5, prob = 160},
			{ypos = 6, prob = 160},
			{ypos = 7, prob = 160},
			{ypos = 8, prob = 160},
			{ypos = 9, prob = 160},
			{ypos = 10, prob = 160},
			{ypos = 11, prob = 160},
			{ypos = 12, prob = 160},
			{ypos = 13, prob = 160},
			{ypos = 14, prob = 160},
			{ypos = 15, prob = 255},
			{ypos = 16, prob = 160},
			{ypos = 17, prob = 255},
			{ypos = 18, prob = 255},
		}
	}
)