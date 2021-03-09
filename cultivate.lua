-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore, math
    = minetest, nodecore, math
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()

nodecore.register_limited_abm({
	label = "reeds spreading",
	nodenames = {modname .. ":reeds"},
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
		if #num > 3 and pos.y < 5 then
			nodecore.set_node(gro, {name = modname .. ":reeds"})
		end
	end,
})

nodecore.register_limited_abm({
	label = "shrubs spreading",
	nodenames = {modname .. ":shrub"},
--	neighbors = {"air"},
	interval = 120,
	chance = 20,
	action = function(pos, node)
		local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
		local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
		local num = minetest.find_nodes_in_area(
			{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
			{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
		{"nc_tree:humus", "nc_terrain:dirt"})
		if minetest.get_node(gro).name ~= "air" then return end
		if minetest.get_node(grodown).name ~= {"nc_tree:humus", "nc_terrain:dirt"} then return end
		if #num > 0 then
			nodecore.set_node(gro, {name = modname .. ":shrub"})
		end
	end,
})

nodecore.register_limited_abm({
	label = "ferns spreading",
	nodenames = {modname .. ":fern"},
--	neighbors = {"air"},
	interval = 120,
	chance = 20,
	action = function(pos, node)
		local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
		local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
		local num = minetest.find_nodes_in_area(
			{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
			{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
		{"nc_tree:humus", "nc_terrain:dirt"})
		if minetest.get_node(gro).name ~= "air" then return end
		if minetest.get_node(grodown).name ~= {"nc_tree:humus", "nc_terrain:dirt"} then return end
		if #num > 0 then
			nodecore.set_node(gro, {name = modname .. ":fern"})
		end
	end,
})

nodecore.register_limited_abm({
	label = "grass spreading",
	nodenames = {"group:tallgrass"},
--	neighbors = {"group:grass"},
	interval = 120,
	chance = 20,
	action = function(pos, node)
		local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
		local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
		local num = minetest.find_nodes_in_area(
			{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
			{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
			{"nc_terrain:dirt_with_grass"})
		if minetest.get_node(gro).name ~= "air" then return end
		if minetest.get_node(grodown).name ~= "nc_terrain:dirt_with_grass" then return end
		if #num > 3 then
			nodecore.set_node(gro, {name = modname .. ":grass_".. math.random(1,5)})
		end
	end,
})

nodecore.register_limited_abm({
	label = "thornbriar spreading",
	nodenames = {modname .. ":thornbriar"},
--	neighbors = {"air"},
	interval = 120,
	chance = 20,
	action = function(pos, node)
		local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
		local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
		local num = minetest.find_nodes_in_area(
			{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
			{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
		{"nc_tree:humus", "nc_terrain:dirt"})
		if minetest.get_node(gro).name ~= "air" then return end
		if minetest.get_node(grodown).name ~= {"nc_tree:humus", "nc_terrain:dirt"} then return end
		if #num > 0 and pos.y < 50 then
			nodecore.set_node(gro, {name = modname .. ":thornbriar"})
		end
	end,
})


nodecore.register_limited_abm({
	label = "lilypads spreading",
	nodenames = {modname .. ":lilypad"},
	neighbors = {"group:water"},
	interval = 120,
	chance = 20,
	action = function(pos, node)
		local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
		local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
		local num = minetest.find_nodes_in_area(
			{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
			{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
			{"nc_terrain:water_source"})
		local dname = minetest.get_node(grodown).name
		if minetest.get_node(gro).name ~= "air" then return end
          if minetest.get_item_group(dname, "water") > 0 then return end
		if #num > 3 and pos.y < 5 then
			nodecore.set_node(gro, {name = modname .. ":lilypad"})
		end
	end,
})

nodecore.register_limited_abm({
	label = "mushroom spreading",
	nodenames = {modname .. ":mushroom"},
--	neighbors = {"group:water"},
	interval = 120,
	chance = 20,
	action = function(pos, node)
		local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
		local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
		local num = minetest.find_nodes_in_area(
			{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
			{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
			{"group:soil", "group:log"})
		local dname = minetest.get_node(grodown).name
		local light_level = minetest.get_node_light(pos)
		if minetest.get_node(gro).name ~= "air" then return end
          if minetest.get_item_group(dname, {"soil", "log"}) > 0 then return end
		if light_level > 0 and light_level < 10 then 
			dim = true
		end
		if #num > 0 and dim then
			nodecore.set_node(gro, {name = modname .. ":mushroom"})
		end
	end,
})

nodecore.register_limited_abm({
	label = "glowshroom spreading",
	nodenames = {modname .. ":mushroom_glow"},
--	neighbors = {"group:water"},
	interval = 120,
	chance = 20,
	action = function(pos, node)
		local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
		local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
		local num = minetest.find_nodes_in_area(
			{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
			{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
			{"group:soil", "group:log"})
		local dname = minetest.get_node(grodown).name
		local light_level = minetest.get_node_light(pos)
		if minetest.get_node(gro).name ~= "air" then return end
          if minetest.get_item_group(dname, {"soil", "log"}) > 0 then return end
		if light_level > 0 and light_level < 10 then 
			dim = true
		end
		if #num > 0 and dim then
			nodecore.set_node(gro, {name = modname .. ":mushroom_glow"})
		end
	end,
})

nodecore.register_limited_abm({
	label = "luxaeterna spreading",
	nodenames = {modname .. ":mushroom_lux"},
--	neighbors = {"group:water"},
	interval = 120,
	chance = 20,
	action = function(pos, node)
		local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
		local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
		local num = minetest.find_nodes_in_area(
			{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
			{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
			{"group:soil", "group:log"})
		local dname = minetest.get_node(grodown).name
		local light_level = minetest.get_node_light(pos)
		if minetest.get_node(gro).name ~= "air" then return end
          if minetest.get_item_group(dname, {"soil", "log"}) > 0 then return end
		if light_level > 0 and light_level < 10 then 
			dim = true
		end
		if #num > 0 and dim then
			nodecore.set_node(gro, {name = modname .. ":mushroom_lux"})
		end
	end,
})

nodecore.register_limited_abm({
	label = "starflower spreading",
	nodenames = {modname .. ":starflower"},
--	neighbors = {"air"},
	interval = 120,
	chance = 20,
	action = function(pos, node)
		local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
		local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
		local num = minetest.find_nodes_in_area(
			{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
			{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
		{"nc_tree:humus", "nc_terrain:dirt"})
		if minetest.get_node(gro).name ~= "air" then return end
		if minetest.get_node(grodown).name ~= {"nc_tree:humus", "nc_terrain:dirt"} then return end
		if #num > 0 and pos.y > 100 then
			nodecore.set_node(gro, {name = modname .. ":starflower"})
		end
	end,
})

nodecore.register_limited_abm({
	label = "bamboo spreading",
	nodenames = {modname .. ":bamboo"},
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
			nodecore.set_node(gro, {name = modname .. ":bamboo"})
		end
	end,
})

nodecore.register_limited_abm({
    label = "bamboo growing",
    nodenames = {modname .. ":bamboo"},
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
                return minetest.set_node(up, {name = modname .. ":bamboo"})
            elseif dname ~= modname .. ":bamboo" then
                return
            end
        end
    end,
})

function spread_flower(color)
	nodecore.register_limited_abm({
		label = "flower spreading",
		nodenames = {modname .. ":flower_" .. color},
--		neighbors = {"air"},
		interval = 120,
		chance = 20,
		action = function(pos, node)
			local gro = {x = pos.x + math.random(-1, 1), y = pos.y + math.random(-1,1), z = pos.z + math.random(-1, 1)}
			local grodown = {x = gro.x, y = gro.y - 1, z = gro.z}
			local num = minetest.find_nodes_in_area(
				{x = pos.x + 1, y = pos.y - 1, z = pos.z + 1},
				{x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
			{"nc_tree:humus", "nc_terrain:dirt"})
			if minetest.get_node(gro).name ~= "air" then return end
			if minetest.get_node(grodown).name ~= {"nc_tree:humus", "nc_terrain:dirt"} then return end
			if #num > 0 then
				nodecore.set_node(gro, {name = modname .. ":flower_" .. color})
			end
		end,
	})
end
spread_flower("blue")
spread_flower("red")
spread_flower("violet")
spread_flower("white")
spread_flower("yellow")

