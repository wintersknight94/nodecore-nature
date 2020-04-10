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
-----------------FOREST-----------------
minetest.register_biome({
		name = "forest",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 4,
		node_riverbed = "nc_terrain:dirt",
		depth_riverbed = 2,
		node_dungeon = "nc_stonework:bricks_bonded",
		node_dungeon_alt = "nc_nature:mossy_bricks_bonded",
		y_min = 4,
		y_max = 200,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 45,
		humidity_point = 60,
	})

----------------------------------------
---------------OLD FOREST---------------
minetest.register_biome({
		name = "old_forest",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 6,
		node_riverbed = "nc_terrain:dirt",
		depth_riverbed = 2,
		node_dungeon = "nc_stonework:bricks_bonded",
		node_dungeon_alt = "nc_nature:mossy_bricks_bonded",
		y_min = 6,
		y_max = 1000,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 40,
		humidity_point = 65,
	})

----------------------------------------
-------------ANCIENT FOREST-------------
minetest.register_biome({
		name = "ancient_forest",
		node_top = "nc_terrain:dirt_with_grass",
		depth_top = 1,
		node_filler = "nc_terrain:dirt",
		depth_filler = 8,
		node_riverbed = "nc_terrain:dirt",
		depth_riverbed = 2,
		node_dungeon = "nc_stonework:bricks_bonded",
		node_dungeon_alt = "nc_nature:mossy_bricks_bonded",
		y_min = 6,
		y_max = 1000,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 35,
		humidity_point = 70,
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
		y_min = 4,
		y_max = 48,
		vertical_blend = 8,
		horizontal_blend = 16,
		heat_point = 70,
		humidity_point = 80,
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
		depth_riverbed = 1,
		node_dungeon = "nc_stonework:bricks",
		node_dungeon_alt = "nc_nature:mossy_bricks",
		y_min = -1,
		y_max = 2,
		vertical_blend = 2,
		horizontal_blend = 16,
		heat_point = 50,
		humidity_point = 100,
	})

----------------------------------------
-----------------DUNE-------------------
minetest.register_biome({
		name = "dune",
--		node_dust = "nc_terrain:sand",
		node_top = "nc_terrain:sand",
		depth_top = 3,
		node_filler = "nc_concrete:sandstone",
		depth_filler = 6,
		node_riverbed = "nc_terrain:sand",
		depth_riverbed = 6,
		node_dungeon = "nc_concrete:sandstone",
		y_min = 0,
		y_max = 31000,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 100,
		humidity_point = 0,
	})

----------------------------------------
---------------STONEWASTE---------------
minetest.register_biome({ --This is the best 'cold biome' i can do without adding ice.
		name = "stonewaste",
		node_top = "nc_terrain:gravel",
		depth_top = 2,
		node_filler = "nc_terrain:cobble",
		depth_filler = 3,
		node_riverbed = "nc_terrain:gravel",
		depth_riverbed = 2,
		node_dungeon = "nc_terrain:cobble",
		node_dungeon_alt = "nc_nature:mossy_cobble",
		y_min = 0,
		y_max = 31000,
		vertical_blend = 16,
		horizontal_blend = 16,
		heat_point = 5,
		humidity_point = 5,
	})

