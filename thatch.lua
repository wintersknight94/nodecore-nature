-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()

-----------------------------------------
------------------Thatch-----------------

-----Thatch Node-----
minetest.register_node("nc_nature:thatch", {
		description = "Thatch",
		tiles = {"nc_nature_thatch.png"},
		groups = {
			choppy = 2,
			flammable = 2,
			fire_fuel = 5
		},
		sounds = nodecore.sounds("nc_terrain_swishy")
	})

-----Crafting Thatch-----
nodecore.register_craft({
		label = "weave plant fibers into thatch",
		action = "pummel",
		duration = 3,
		nodes = {
			{
				match = {name = "nc_nature:plant_fibers", count = 8},
				replace = "nc_nature:thatch"
			}
		},
	})

-----Recycling Thatch-----
nodecore.register_craft({
		label = "break thatch into fibers",
		action = "pummel",
		priority = -1,
		toolgroups = {choppy = 2},
		nodes = {
			{match = "nc_nature:thatch", replace = "air"}
		},
		items = {
			{name = "nc_nature:plant_fibers", count = 8, scatter = 3}
		},
		itemscatter = 3
	})

----------------------------------------
--------------Plant Fibers--------------
minetest.register_craftitem("nc_nature:plant_fibers", {
	description = ("Plant Fibers"),
	inventory_image = "nc_nature_plant_fibers.png",
	wield_image = "nc_nature_plant_fibers.png",
	groups = {snappy = 1, flammable = 1},
	sounds = nodecore.sounds("nc_terrain_swishy"),
})

-----Fibers To Peat-----
nodecore.register_craft({
		label = "grind plant fibers to peat",
		action = "pummel",
--		priority = -1,
		toolgroups = {crumbly = 2},
		nodes = {
			{
				match = {name = modname .. ":plant_fibers", count = 8},
				replace = "nc_tree:peat"
			}
		}
	})

