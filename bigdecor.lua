-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()

----------------------------------------
------------------TREE------------------
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:soil"},
		sidelen = 16,
		fill_ratio = 0.02,
		biomes = {"forest", "thicket", "old_forest"},
		y_min = 1,
		y_max = 1000,
		schematic = nodecore.talltree_schematic,
		flags = "place_center_x, place_center_z",
		rotation = "random",
		replacements = {}
	})

----------------------------------------
---------------GRAND TREE---------------
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:soil"},
		sidelen = 16,
		fill_ratio = 0.02,
		biomes = {"old_forest", "ancient_forest"},
		y_min = 1,
		y_max = 200,
		schematic = nodecore.grandtree_schematic,
		flags = "place_center_x, place_center_z",
		rotation = "random",
		replacements = {}
	})

----------------------------------------
-------------ANTIQUE TREE---------------
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:soil"},
		sidelen = 16,
		fill_ratio = 0.02,
		biomes = {"old_forest", "ancient_forest"},
		y_min = 1,
		y_max = 200,
		schematic = nodecore.antiquetree_schematic,
		flags = "place_center_x, place_center_z",
		rotation = "random",
		replacements = {}
	})

----------------------------------------
---------------FALLEN LOG---------------
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:soil"},
		sidelen = 16,
		-- noise_params = {
			-- offset = -0.008,
			-- scale = 0.016,
			-- spread = {x = 120, y = 120, z = 120},
			-- seed = 2,
			-- octaves = 3,
			-- persist = 0.66
		-- },
		fill_ratio = 0.005,
		biomes = {"forest", "thicket", "old_forest", "ancient_forest"},
		y_min = -2,
		y_max = 1000,
		schematic = nodecore.deadwood_schematic,
--		flags = "place_center_x, place_center_z",
		rotation = "random",
		replacements = {},
	})

----------------------------------------
----------------BOULDER-----------------
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:soil", "nc_terrain:sand"},
		sidelen = 16,
		-- noise_params = {
			-- offset = -0.008,
			-- scale = 0.016,
			-- spread = {x = 120, y = 120, z = 120},
			-- seed = 2,
			-- octaves = 3,
			-- persist = 0.64
		-- },
		fill_ratio = 0.001,
		biomes = {"grassland", "stonewaste", "old_forest", "ancient_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = nodecore.boulder_schematic,
		flags = "place_center_x, place_center_z",
		rotation = "random",
		replacements = {},
	})
