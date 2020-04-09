-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()

----------------------------------------
-----------------GRASS------------------
function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		name = {modname .. ":grass_" .. length},
		deco_type = "simple",
		place_on = {"nc_terrain:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.4
		},
		y_max = 31000,
		y_min = 1,
		decoration = {modname .. ":grass_" .. length},
	})
end

	register_grass_decoration(-0.03,  0.09,  5)
	register_grass_decoration(-0.015, 0.075, 4)
	register_grass_decoration(0,      0.06,  3)
	register_grass_decoration(0.015,  0.045, 2)
	register_grass_decoration(0.03,   0.03,  1)

----------------------------------------
----------------FLOWERS-----------------
function register_flower_decoration(offset, scale, id, ymin)
	minetest.register_decoration({
		name = {modname .. ":flower_" .. id},
		deco_type = "simple",
		place_on = {"nc_terrain:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.4
		},
		y_max = 140,
		y_min = ymin,
		decoration = {modname .. ":flower_" .. id},
	})
end

register_flower_decoration(0.072,	0.02,	"violet",	40)
register_flower_decoration(0.042,	0.02,	"red",		30)
register_flower_decoration(0.005,	0.02,	"blue",		20)
register_flower_decoration(0.015,	0.01,	"white",	5)
register_flower_decoration(0.035,	0.01,	"yellow",	1)

----------------------------------------
---------------REEDS--------------------
minetest.register_decoration({
		name = {modname .. ":reeds"},
		deco_type = "simple",
		place_on = {"group:soil", "nc_terrain:sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y = 100, z = 100},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		y_max = 1,
		y_min = 1,
		decoration = {modname .. ":reeds"},
		spawn_by = "nc_terrain:water_source",
		num_spawn_by = 1,
	})

--Floodland Reeds--
minetest.register_decoration({
		name = {modname .. ":reeds_floodland"},
		deco_type = "simple",
		place_on = {"nc_terrain:dirt_with_grass", "nc_terrain:dirt", "nc_terrain:sand"},
		sidelen = 16,
		fill_ratio = 0.1,
		y_max = 2,
		y_min = -4,
		decoration = {modname .. ":reeds"},
		biomes = {"floodlands"},
	})

----------------------------------------
---------------SHRUB----------------
minetest.register_decoration({
		name = {modname .. ":shrub"},
		deco_type = "simple",
		place_on = {"group:soil"},
		sidelen = 16,
		fill_ratio = 0.01,
		biomes = {"unknown", "forest", "thicket"},
		y_max = 200,
		y_min = -20,
		decoration = {modname .. ":shrub"},
	})

----------------------------------------
---------------THORNBRIAR---------------

minetest.register_decoration({
		name = {modname .. ":thornbriar"},
		deco_type = "simple",
		place_on = {"group:soil"},
		sidelen = 16,
		fill_ratio = 0.4,
		biomes = {"thicket"},
		y_max = 200,
		y_min = -20,
		height = 1,
		height_max = 3,
		decoration = {modname .. ":thornbriar"},
	})

----------------------------------------
------------------FERN------------------
minetest.register_decoration({
		name = {modname .. ":fern"},
		deco_type = "simple",
		place_on = {"group:soil"},
		sidelen = 16,
		fill_ratio = 0.1,
		biomes = {"forest", "old_forest"},
		y_max = 2000,
		y_min = -20,
		decoration = {modname .. ":fern"},
	})
 
 ---------------------------------------
 ----------------LILYPAD----------------
 	minetest.register_decoration({
		name = {modname .. ":lilypad"},
		deco_type = "simple",
		place_on = {"group:soil", "group:crumbly", "group:stone", },
		sidelen = 16,
		noise_params = {
			offset = -0.12,
			scale = 0.3,
			spread = {x = 200, y = 200, z = 200},
			seed = 33,
			octaves = 3,
			persist = 0.7
		},
		y_max = 0,
		y_min = 0,
		decoration = "nc_nature:lilypad",
		param2 = 0,
		param2_max = 3,
		place_offset_y = 1,
	})

----------------------------------------
-----------------BAMBOO-----------------
	minetest.register_decoration({
		name = "nc_nature:bamboo",
		deco_type = "simple",
		place_on = {"group:soil", "nc_terrain:sand"},
		sidelen = 16,
		fill_ratio = 0.1,
		y_max = 200,
		y_min = 1,
		decoration = "nc_nature:bamboo",
		height = 2,
		height_max = 8,
		biomes = {"thicket", "floodland"}
	})

----------------------------------------
---------------MUSHROOMS----------------
function mushroom_decoration(id, ymin, ymax, offest, scale, seed, place, biome)
	minetest.register_decoration({
		name = {modname .. ":" .. id},
		deco_type = "simple",
		place_on = place,
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 100, y = 100, z = 100},
			seed = seed,
			octaves = 3,
			persist = 0.2
		},
		biomes = biome,
		y_max = ymax,
		y_min = ymin,
		decoration = {modname .. ":" .. id},
	})
end
--------------------ID------------------ymin----ymax----offset------scale---seed----place-----------------------------------------------biome-----
mushroom_decoration("mushroom",			1,		80,		-0.42,		0.07,	42,		{"group:soil", "group:log"},									{"grassland", "forest", "old_forest"})
mushroom_decoration("mushroom_glow",	-400,	1,		0.11,		0.2,	94,		{"group:soil", "group:log", "group:crumbly", "group:cobble"},	{""})
mushroom_decoration("mushroom_lux",		-1000,	-100,	0.72,		0.1,	69,		{"group:soil", "group:crumbly", "group:cobble"},				{""})
-----------------------------------------------------------------------------------

----------------------------------------
---------------STARFLOWER---------------
minetest.register_decoration({
		name = {modname .. ":starflower"},
		deco_type = "simple",
		place_on = {"group:soil"},
		sidelen = 16,
		noise_params = {
			offset = -0.7,
			scale = 0.7,
			spread = {x = 700, y = 70, z = 700},
			seed = 777,
			octaves = 7,
			persist = 0.7
		},
		y_max = 31000,
		y_min = 200,
		decoration = {modname .. ":starflower"},
	})