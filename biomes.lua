-- LUALOCALS < ---------------------------------------------------------
local minetest
    = minetest
-- LUALOCALS > ---------------------------------------------------------

local modname = minetest.get_current_modname()

minetest.register_biome({
		name = "forest",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 6,
		node_riverbed = "nc_terrain:dirt",
		depth_riverbed = 2,
		node_dungeon = "nc_concrete:bricks_bonded",
		y_min = 4,
		y_max = 2000,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 60,
		humidity_point = 70,
	})

minetest.register_biome({
		name = "thicket",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 2,
		node_riverbed = "nc_terrain:sand",
		depth_riverbed = 2,
		node_dungeon = "nc_terrain:stone",
		y_min = 4,
		y_max = 32,
		vertical_blend = 8,
		horizontal_blend = 16,
		heat_point = 45,
		humidity_point = 65,
	})

minetest.register_biome({
		name = "grassland",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 2,
		node_riverbed = "nc_terrain:sand",
		depth_riverbed = 1,
		y_min = 1,
		y_max = 31000,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 50,
		humidity_point = 35,
	})

minetest.register_biome({
		name = "floodland",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 2,
		node_riverbed = "nc_terrain:sand",
		depth_riverbed = 1,
		y_min = -4,
		y_max = 2,
		vertical_blend = 2,
		horizontal_blend = 16,
		heat_point = 50,
		humidity_point = 100,
	})

minetest.register_biome({
		name = "stonewaste",
		node_top = "nc_terrain:cobble",
		depth_top = 1,
		node_filler = "nc_terrain:cobble",
		depth_filler = 1,
		node_riverbed = "nc_terrain:gravel",
		depth_riverbed = 2,
		node_dungeon = "nc_concrete:bricks_bonded",
		y_min = 30,
		y_max = 31000,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 100,
		humidity_point = 25,
	})

