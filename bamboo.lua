-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()

minetest.register_alias_force("nc_nature:bamboo", "nc_nature:bamboo_living")

minetest.register_node(modname .. ":bamboo_pole", {
	description = "Bamboo",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.4375, -0.125, 0.125, 0.5, 0.125}, -- Shaft
			{-0.1875, -0.5, -0.1875, 0.1875, -0.4375, 0.1875} -- Bottom
		}
	},
	tiles = {"nc_nature_bamboo.png^[colorize:peru:100"},
	paramtype = "light",
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
	climbable = true,
	groups = {choppy = 1, flammable = 2, fire_fuel = 1, bamboo = 1},
	sounds = nodecore.sounds("nc_tree_sticky")
})

minetest.register_node(modname .. ":bamboo_living", {
	description = "Living Bamboo",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.4375, -0.125, 0.125, 0.5, 0.125}, -- Shaft
			{-0.1875, -0.5, -0.1875, 0.1875, -0.4375, 0.1875} -- Bottom
		}
	},
	tiles = {"nc_nature_bamboo.png"},
	groups = {choppy = 2, flammable = 6, fire_fuel = 1, falling_node = 1, scaling_time = 80},
	crush_damage = 1,
	sounds = nodecore.sounds("nc_tree_sticky"),
	drop = modname .. ":bamboo_pole"
})

nodecore.register_aism({
	label = "bamboo convert",
	interval = 1,
	chance = 1,
	itemnames = {modname .. ":bamboo_living"},
	action = function(stack)
		stack:set_name(modname .. ":bamboo_pole")
		return stack
	end
})

nodecore.register_limited_abm({
	label = "bamboo spreading",
	nodenames = {modname .. ":bamboo_living"},
	neighbors = {"group:water"},
	interval = 120,
	chance = 20,
	action = function(pos, node)
		local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
		local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
		local num = minetest.find_nodes_in_area(
			{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
			{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
			{"group:soil", "group:sand"})
		local dname = minetest.get_node(grodown).name
		if minetest.get_node(gro).name ~= "air" then return end
          if minetest.get_item_group(dname, "soil") > 0 then return end
		if #num > 3 and pos.y < 50 then
			nodecore.set_node(gro, {name = modname .. ":bamboo_living"})
		end
	end,
})

nodecore.register_limited_abm({
    label = "bamboo growing",
    nodenames = {modname .. ":bamboo_living"},
    -- neighbors = {"air"}, -- dunno if this helps, with the air check in the action; I'd compare performance with and without.
    interval = 60,
    chance = 10,
    action = function(pos, node)
        local up = {x = pos.x, y = pos.y + 1, z = pos.z}
        if minetest.get_node(up).name ~= "air" then return end
        for i = 1, 13 do
            local down = {x = pos.x, y = pos.y - i; z = pos.z}
            local dname = minetest.get_node(down).name
            if minetest.get_item_group(dname, "soil") > 0 then
                return minetest.set_node(up, {name = modname .. ":bamboo_living"})
            elseif dname ~= modname .. ":bamboo_living" then
                return
            end
        end
    end,
})

minetest.register_decoration({
	label = "nc_nature:bamboo_living",
	deco_type = "simple",
	place_on = {"group:soil", "nc_terrain:sand"},
	sidelen = 16,
	fill_ratio = 0.1,
	y_max = 200,
	y_min = 1,
	decoration = "nc_nature:bamboo_living",
	height = 1,
	height_max = 12,
	biomes = {"thicket", "floodland"}
	})


-----Split Bamboo-----
nodecore.register_craft({
	label = "split bamboo into staves",
	action = "pummel",
--	priority = -1,
	toolgroups = {choppy = 1},
	nodes = {
		{match = "nc_nature:bamboo_pole", replace = "air"}
	},
	items = {
		{name = "nc_woodwork:staff", count = 2, scatter = 2}
	},
	itemscatter = 2
})

