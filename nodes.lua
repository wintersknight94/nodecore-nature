-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()

----------------------------------------
---------------FALLEN LOG---------------
minetest.register_node(modname .. ":decayed_log", {
		description = "Decayed Log",
		drawtype = "normal",
		tiles = {
			"nc_nature_decayed_log_top.png",
			"nc_nature_decayed_log_top.png",
			"nc_nature_decayed_log_side.png"
		},
		groups = {
			choppy = 2,
			flammable = 6,
			fire_fuel = 6,
			falling_repose = 2
		},
		crush_damage = 1,
		sounds = nodecore.sounds("nc_tree_woody"),
		paramtype2 = "facedir",
		on_place = minetest.rotate_node,
		drop = "nc_nature:decayed_log"
	})

----------------------------------------
---------DIRT_WITH_LEAF_LITTER----------
minetest.register_node(modname .. ":dirt_with_leaf_litter", {
		description = "Leaf Litter",
		tiles = {"nc_nature:dirt_with_leaf_litter.png"},
		silktouch = false,
		groups = {
			soil = 1,
			dirt = 1,
			crumbly = 1,
			fire_fuel = 2,
			flammable =6
		},
		crush_damage = 1,
		drop_in_place = "nc_terrain:dirt",
		sounds = nodecore.sounds("nc_terrain_crunchy")
	})

----------------------------------------
-------------TREE BRANCH----------------

minetest.register_node(modname .. ":branch", {
		description = "Tree Branch",
		tiles = {"nc_tree_tree_side.png"},
		silktouch = false,
		groups = {
			choppy = 2,
			flammable = 8,
			fire_fuel = 6,
			log = 1,
			scaling_time = 75
		},
		crush_damage = 1,
		drop = "nc_tree:log",
		sounds = nodecore.sounds("nc_terrain_crunchy")
	})