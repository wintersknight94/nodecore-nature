-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()

----------------------------------------
-----------------GRASS------------------
for i = 1, 5 do
	minetest.register_node("nc_nature:grass_" .. i, {
		description = ("Grass"),
		drawtype = "plantlike",
		waving = 1,
		tiles = {"nc_nature_grass_" .. i .. ".png"},
		inventory_image = "nc_nature_grass_" .. i .. ".png",
		wield_image = "nc_nature_grass_" .. i .. ".png",
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		buildable_to = true,
		silktouch = false,
		drop = "nc_nature:plant_fibers",
		groups = {snappy = 1, flora = 1, attached_node = 1, tallgrass = 1, flammable = 1},
		sounds = nodecore.sounds("nc_terrain_swishy"),
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
		},
	})
end

----------------------------------------
------------------REEDS-----------------
minetest.register_node("nc_nature:reeds", {
	description = ("Reeds"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"nc_nature_reeds.png"},
	inventory_image = "nc_nature_reeds.png",
	wield_image = "nc_nature_reeds.png",
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 4,
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
--	silktouch = false,
	groups = {snappy = 1, flora = 1, flammable = 3, attached_node = 1, natdecay = 1},
--	drop = "nc_nature:plant_fibers",
	sounds = nodecore.sounds("nc_terrain_swishy"),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

----------------------------------------
-----------------SHRUB------------------
minetest.register_node("nc_nature:shrub", {
	description = ("Shrub"),
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nc_nature_shrub.png"},
	paramtype = "light",
	air_pass = true,
	sunlight_propagates = true,
	walkable = true,
	buildable_to = false,
	silktouch = false,
	groups = {
		snappy = 1,
		flora = 1,
		flammable = 3,
		green = 1,
		leafy = 1,
		shrub = 1
	},
	alternate_loose = {
		tiles = {modname .. "_shrub.png^nc_api_loose.png"},
		walkable = false,
		groups = {
			snappy = 1,
			leafy = 1,
			flammable = 1,
			falling_repose = 1,
			green = 1,
			stack_as_node = 1,
			shrub = 1,
			natdecay = 1
			}
		},
		no_repack = true,
		sounds = nodecore.sounds("nc_terrain_swishy")
})
-----Shrub Rerooting-----
nodecore.register_limited_abm({
		label = "Shrub Rerooting",
		nodenames = {modname .. ":shrub_loose"},
		neighbors = {"group:soil"},
		interval = 2,
		chance = 10,
		action = function(pos)
			nodecore.set_loud(pos, {name = modname .. ":shrub"})
		end
	})
-----Recycling Shrub-----
nodecore.register_craft({
		label = "break shrub into fibers",
		action = "pummel",
		toolgroups = {choppy = 2},
		nodes = {
			{match = "nc_nature:shrub_loose", replace = "air"}
		},
		items = {
			{name = "nc_nature:plant_fibers", count = 4, scatter = 3}
		},
		itemscatter = 3
	})
----------------------------------------
----------------THORNBRIAR--------------
minetest.register_node("nc_nature:thornbriar", {
	description = ("Thornbriar"),
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"nc_nature_thornbriar.png"},
	inventory_image = "nc_nature_thornbriar.png",
	wield_image = "nc_nature_thornbriar.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	silktouch = false,
	damage_per_second = 1,
	groups = {snappy = 1, flora = 1, flammable = 2, attached_node = 1},
	drop = "nc_nature:plant_fibers",
	sounds = nodecore.sounds("nc_terrain_swishy"),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

----------------------------------------
------------------FERN------------------
minetest.register_node(modname .. ":fern", {
	description = "Fern",
	drawtype = 'plantlike',
	waving = 1,
	tiles = {modname .. "_fern.png"},
	inventory_image = "nc_nature_fern.png",
	wield_image = modname .. "_fern.png",
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
--	silktouch = false,
	groups = { snappy = 1, flora = 1, flammable = 2, attached_node = 1, natdecay = 1},
	sounds = nodecore.sounds("nc_terrain_swishy"),
	buildable_to = true,
--	drop = "nc_nature:plant_fibers",
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	}
})

----------------------------------------
----------------LILYPAD-----------------
minetest.register_node(modname .. ":lilypad", {
	description = "Lilypad",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"nc_nature_lilypad.png", "nc_nature_lilypad_bottom.png",},
	inventory_image = "nc_nature_lilypad.png",
	wield_image = "nc_nature_lilypad.png",
	liquids_pointable = true,
	walkable = false,
	buildable_to = true,
	floodable = true,
	silktouch = false,
	groups = {snappy = 1, flora = 1, flammable = 3},
	sounds = nodecore.sounds("nc_terrain_swishy"),
	node_placement_prediction = "",
	node_box = {
		type = "fixed",
		fixed = {-0.5, -31 / 64, -0.5, 0.5, -15 / 32, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, -15 / 32, 7 / 16}
	},
	drop = "nc_nature:plant_fibers"
})

----------------------------------------
-----------------BAMBOO-----------------
minetest.register_node(modname .. ":bamboo", {
	description = "Bamboo",
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.4375, -0.125, 0.125, 0.5, 0.125}, -- Shaft
			{-0.1875, -0.5, -0.1875, 0.1875, -0.4375, 0.1875} -- Bottom
		}
	},
	tiles = {"nc_nature_bamboo.png"},
	climbable = true,
	silktouch = false,
	drop = "nc_woodwork:staff",
	groups = {choppy = 1, flora = 1, flammable = 2, fire_fuel = 1, falling_node = 1},
	crush_damage = 1,
	sounds = nodecore.sounds("nc_tree_sticky")
})

----------------------------------------
-----------------FLOWERS----------------
function register_flower(id, desc)
	minetest.register_node(modname .. ":flower_" .. id, {
		description = desc .. " Flower",
		drawtype = 'plantlike',
		waving = 1,
		tiles = {modname .. "_flower_" .. id .. ".png"},
		wield_image = modname .. "_flower_" .. id .. ".png",
		inventory_image = modname .. "_flower_" .. id .. ".png",
		sunlight_propagates = true,
		paramtype = 'light',
		walkable = false,
--		silktouch = false,
		groups = { snappy = 1, flora = 1, flammable = 1, attached_node = 1, natdecay = 1},
		sounds = nodecore.sounds("nc_terrain_swishy"),
		buildable_to = true,
--		drop = "nc_nature:plant_fibers",
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
		},
	})
end
register_flower("blue",			"Blue")
register_flower("red",			"Red")
register_flower("violet",		"Violet")
register_flower("white",			"White")
register_flower("yellow",		"Yellow")

----------------------------------------
---------------STARFLOWER---------------
minetest.register_node(modname .. ":starflower", {
	description = "Starflower",
	drawtype = 'plantlike',
	waving = 1,
	tiles = {modname .. "_starflower.png"},
	wield_image = modname .. "_starflower.png",
	inventory_image = modname .. "_starflower.png",
	sunlight_propagates = true,
	paramtype = 'light',
	light_source = 7,
	walkable = false,
	groups = { snappy = 1, flora = 1, flammable = 1, attached_node = 1, natdecay = 1},
	sounds = nodecore.sounds("nc_terrain_swishy"),
	buildable_to = true,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})

----------------------------------------
-----------------Decay------------------
-----Plant Decay-----
nodecore.register_aism({
				label = "Plant Stack Decay",
				interval = 2,
				chance = 10,
				itemnames = {"group:natdecay"},
				action = function(stack, data)
						minetest.sound_play("nc_terrain_swishy", {gain = 0.4, pos = data.pos})
						local taken = stack:take_item(1)
				taken:set_name(modname .. ":plant_fibers")
				if data.inv then taken = data.inv:add_item("main", taken) end
				if not taken:is_empty() then nodecore.item_eject(data.pos, taken) end
				return stack
				end
		})
