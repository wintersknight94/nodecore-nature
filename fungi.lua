-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
local checkdirs = {
	{x = 1, y = 0, z = 0},
	{x = -1, y = 0, z = 0},
	{x = 0, y = 0, z = 1},
	{x = 0, y = 0, z = -1},
	{x = 0, y = 1, z = 0},
	{x = 0, y = -1, z = 0}
}

----------------------------------------
---------------MUSHROOMS----------------

	minetest.register_node("nc_nature:mushroom", {
		description = "Mushroom",
		drawtype = 'plantlike',
		waving = 1,
		tiles = {modname .. "_mushroom.png"},
		sunlight_propagates = true,
		paramtype = 'light',
		walkable = false,
		silktouch = false,
		groups = { snappy = 1, fungi = 1, flammable = 1, attached_node = 1},
		sounds = nodecore.sounds("nc_terrain_swishy"),
		buildable_to = true,
		drop = "nc_nature:plant_fibers",
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
		},
	})

	minetest.register_node("nc_nature:mushroom_glow", {
		description = "Glowing Mushroom",
		drawtype = 'plantlike',
		waving = 1,
		tiles = {modname .. "_mushroom_glow.png"},
		sunlight_propagates = true,
		paramtype = 'light',
		walkable = false,
		silktouch = false,
		light_source = 2,
		groups = { snappy = 1, fungi = 1, flammable = 1, attached_node = 1},
		sounds = nodecore.sounds("nc_terrain_swishy"),
		buildable_to = true,
		drop = "nc_nature:plant_fibers",
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
		},
	})

	minetest.register_node("nc_nature:mushroom_lux", {
		description = "Luxaeterna",
		drawtype = 'plantlike',
		waving = 1,
		tiles = {modname .. "_mushroom_lux.png"},
		sunlight_propagates = true,
		paramtype = 'light',
		walkable = false,
		silktouch = false,
		light_source = 4,
		groups = { snappy = 1, fungi = 1, flammable = 1, attached_node = 1},
		sounds = nodecore.sounds("nc_terrain_swishy"),
		buildable_to = true,
		drop = "nc_nature:plant_fibers",
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
		},
	})

----------------------------------------
---------------MOSSY NODES--------------

--cobble--
minetest.register_node("nc_nature:mossy_cobble", {
		description = "Mossy Cobble",
		tiles = {"nc_nature_mossy_cobble.png"},
		drop_in_place = "nc_terrain:cobble",
		groups = {
			cobble = 1,
			rock = 1,
			snappy = 1,
			cobbley = 1,
			mossy = 1
			},
		sounds = nodecore.sounds("nc_terrain_stony")
	})

--stone--
minetest.register_node("nc_nature:mossy_stone", {
		description = "Mossy Stone",
		tiles = {"nc_nature_mossy_stone.png"},
		drop_in_place = "nc_terrain:stone",
		groups = {
			stone = 1,
			rock = 1,
			snappy = 1,
			stoney = 1,
			mossy = 1
			},
		sounds = nodecore.sounds("nc_terrain_stony")
	})

--thatch--
minetest.register_node("nc_nature:mossy_thatch", {
		description = "Mossy Thatch",
		tiles = {"nc_nature_mossy_thatch.png"},
		drop_in_place = "nc_nature:thatch",
		groups = {
			snappy = 1,
			flammable = 3,
			fire_fuel = 6,
			mossy = 1
		},
		sounds = nodecore.sounds("nc_terrain_swishy")
	})

--trees--
minetest.register_node("nc_nature:mossy_trunk", {
		description = "Mossy Trunk",
		tiles = {"nc_tree_tree_top.png", "nc_tree_tree_top.png", "nc_nature_mossy_tree_side.png"},
		drop_in_place = "nc_tree:tree",
		groups = {
			snappy = 1,
			flammable = 8,
			fire_fuel = 6,
			log = 1,
			falling_node = 1,
			scaling_time = 80,
			mossy = 1
		},
		crush_damage = 1,
		sounds = nodecore.sounds("nc_tree_woody"),
	})

--dirt--
minetest.register_node("nc_nature:mossy_dirt", {
		description = "Mossy Dirt",
		tiles = {"nc_nature_mossy_dirt.png"},
		drop_in_place = "nc_terrain:dirt",
		groups = {
			soil = 1,
			dirt = 1,
			snappy = 1,
			grassable = 1,
			mossy = 1
			},
		sounds = nodecore.sounds("nc_terrain_crunchy")
	})

--stonebricks--
minetest.register_node("nc_nature:mossy_bricks", {
		description = "Mossy Stone Bricks",
		tiles = {"nc_nature_mossy_stonebrick.png"},
		drop_in_place = "nc_stonework:bricks_bonded",
		groups = {
			stone = 1,
			rock = 1,
			snappy = 1,
			brick = 1,
			mossy = 1
			},
		sounds = nodecore.sounds("nc_terrain_stony")
	})

----------------------------------------
--------------MOSS GROWTH---------------

--cobble--
nodecore.register_limited_abm({
		label = "moss spread cobble",
		nodenames = {"nc_terrain:cobble"},
		neighbors = {"group:mossy"},
		interval = 10,
		chance = 20,
		action = function(pos)
			nodecore.set_node(pos, {name = modname .. ":mossy_cobble"})
		end
	})

--stone--
nodecore.register_limited_abm({
		label = "moss spread stone",
		nodenames = {"nc_terrain:stone"},
		neighbors = {"group:mossy"},
		interval = 10,
		chance = 10,
		action = function(pos)
			nodecore.set_node(pos, {name = modname .. ":mossy_stone"})
		end
--	end
	})

--thatch--
nodecore.register_limited_abm({
		label = "moss spread thatch",
		nodenames = {"nc_nature:thatch"},
		neighbors = {"group:mossy"},
		interval = 10,
		chance = 10,
		action = function(pos)
			nodecore.set_node(pos, {name = modname .. ":mossy_thatch"})
		end
	})

--trees--
nodecore.register_limited_abm({
		label = "moss spread tree",
		nodenames = {"nc_tree:tree"},
		neighbors = {"group:mossy"},
		interval = 10,
		chance = 10,
		action = function(pos)
			nodecore.set_node(pos, {name = modname .. ":mossy_trunk"})
		end
	})

--dirt--
nodecore.register_limited_abm({
		label = "moss spread dirt",
		nodenames = {"nc_terrain:dirt"},
		neighbors = {"group:mossy"},
		interval = 10,
		chance = 10,
		action = function(pos)
			nodecore.set_node(pos, {name = modname .. ":mossy_dirt"})
		end
	})

--stonebricks--
nodecore.register_limited_abm({
		label = "moss spread stonebricks",
		nodenames = {"group:brick"},
		neighbors = {"group:mossy"},
		interval = 10,
		chance = 10,
		action = function(pos)
			nodecore.set_node(pos, {name = modname .. ":mossy_stonebrick"})
		end
	})

----------------------------------------

