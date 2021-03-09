-- LUALOCALS < ---------------------------------------------------------
local minetest
    = minetest
-- LUALOCALS > ---------------------------------------------------------

local modname = minetest.get_current_modname()

----------------------------------------
---------------GRASSLAND----------------
minetest.register_biome({
		name = "grassland",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 2,
		node_riverbed = "nc_terrain:sand",
		depth_riverbed = 1,
		node_dungeon = "nc_concrete:adobe",
		node_dungeon_alt = "nc_nature:mossy_dirt",
		y_min = 1,
		y_max = 31000,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 50,
		humidity_point =50,
	})

----------------------------------------
---------------FLOODLAND----------------
minetest.register_biome({
		name = "floodland",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 2,
		node_riverbed = "nc_terrain:sand",
		depth_riverbed = 4,
		node_dungeon = "nc_stonework:bricks",
		node_dungeon_alt = "nc_nature:mossy_bricks",
		y_min = 0,
		y_max = 2,
		vertical_blend = 2,
		horizontal_blend = 16,
		heat_point = 50,
		humidity_point = 100,
	})

----------------------------------------
----------------THICKET-----------------
minetest.register_biome({
		name = "thicket",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 2,
		node_riverbed = "nc_terrain:sand",
		depth_riverbed = 2,
		node_dungeon = "nc_concrete:adobe",
		node_dungeon_alt = "nc_nature:mossy_dirt",
		y_min = 2,
		y_max = 48,
		vertical_blend = 4,
		horizontal_blend = 16,
		heat_point = 100,
		humidity_point = 100,
	})

----------------------------------------
-----------------FOREST-----------------
minetest.register_biome({
		name = "forest",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 4,
		node_riverbed = "nc_terrain:sand",
		depth_riverbed = 2,
		node_dungeon = "nc_stonework:bricks_bonded",
		node_dungeon_alt = "nc_nature:mossy_bricks_bonded",
		y_min = 2,
		y_max = 250,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 40,
		humidity_point = 80,
	})

----------------------------------------
---------------OLD FOREST---------------
minetest.register_biome({
		name = "old_forest",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 8,
		node_riverbed = "nc_terrain:gravel",
		depth_riverbed = 2,
		node_dungeon = "nc_stonework:bricks_bonded",
		node_dungeon_alt = "nc_nature:mossy_bricks_bonded",
		y_min = 4,
		y_max = 200,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 20,
		humidity_point = 80,
	})

----------------------------------------
-------------ANCIENT FOREST-------------
minetest.register_biome({
		name = "ancient_forest",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 12,
		node_riverbed = "nc_terrain:gravel",
		depth_riverbed = 2,
		node_dungeon = "nc_stonework:bricks_bonded",
		node_dungeon_alt = "nc_nature:mossy_bricks_bonded",
		y_min = 6,
		y_max = 150,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 0,
		humidity_point = 80,
	})

