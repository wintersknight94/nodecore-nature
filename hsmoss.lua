-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
local checkdirs = nodecore.dirs()
local breathable = {
    airlike = true,
    allfaces = true,
    allfaces_optional = true,
    torchlike = true,
    signlike = true,
    plantlike = true,
    firelike = true,
    raillike = true,
    nodebox = true,
    mesh = true,
    plantlike_rooted = true,
	liquid = true,
	flowingliquid = true
}

minetest.register_node("nc_nature:mossy_hstone1", {
		description = "Mossy Stone",
		tiles = {"nc_nature_mossy_stone.png^(nc_terrain_stone_hard.png^[opacity:25)"},
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
	
minetest.register_node("nc_nature:mossy_hstone2", {
		description = "Mossy Stone",
		tiles = {"nc_nature_mossy_stone.png^(nc_terrain_stone_hard.png^[opacity:50)"},
		drop_in_place = "nc_terrain:hard_stone_1",
		groups = {
			stone = 1,
			rock = 1,
			snappy = 1,
			stoney = 1,
			mossy = 1
			},
		sounds = nodecore.sounds("nc_terrain_stony")
	})
minetest.register_node("nc_nature:mossy_hstone3", {
		description = "Mossy Stone",
		tiles = {"nc_nature_mossy_stone.png^(nc_terrain_stone_hard.png^[opacity:75)"},
		drop_in_place = "nc_terrain:hard_stone_2",
		groups = {
			stone = 1,
			rock = 1,
			snappy = 1,
			stoney = 1,
			mossy = 1
			},
		sounds = nodecore.sounds("nc_terrain_stony")
	})
minetest.register_node("nc_nature:mossy_hstone4", {
		description = "Mossy Stone",
		tiles = {"nc_nature_mossy_stone.png^(nc_terrain_stone_hard.png^[opacity:100)"},
		drop_in_place = "nc_terrain:hard_stone_3",
		groups = {
			stone = 1,
			rock = 1,
			snappy = 1,
			stoney = 1,
			mossy = 1
			},
		sounds = nodecore.sounds("nc_terrain_stony")
	})
minetest.register_node("nc_nature:mossy_hstone5", {
		description = "Mossy Stone",
		tiles = {"nc_nature_mossy_stone.png^(nc_terrain_stone_hard.png^[opacity:125)"},
		drop_in_place = "nc_terrain:hard_stone_4",
		groups = {
			stone = 1,
			rock = 1,
			snappy = 1,
			stoney = 1,
			mossy = 1
			},
		sounds = nodecore.sounds("nc_terrain_stony")
	})
minetest.register_node("nc_nature:mossy_hstone6", {
		description = "Mossy Stone",
		tiles = {"nc_nature_mossy_stone.png^(nc_terrain_stone_hard.png^[opacity:150)"},
		drop_in_place = "nc_terrain:hard_stone_5",
		groups = {
			stone = 1,
			rock = 1,
			snappy = 1,
			stoney = 1,
			mossy = 1
			},
		sounds = nodecore.sounds("nc_terrain_stony")
	})
minetest.register_node("nc_nature:mossy_hstone7", {
		description = "Mossy Stone",
		tiles = {"nc_nature_mossy_stone.png^(nc_terrain_stone_hard.png^[opacity:175)"},
		drop_in_place = "nc_terrain:hard_stone_6",
		groups = {
			stone = 1,
			rock = 1,
			snappy = 1,
			stoney = 1,
			mossy = 1
			},
		sounds = nodecore.sounds("nc_terrain_stony")
	})

for i = 1,7 do
nodecore.register_limited_abm({
		label = "moss spread stone",
		nodenames = {"nc_terrain:hard_stone_"..i},
		neighbors = {"group:mossy"},
		interval = 90,
		chance = 10,
		action = function(pos)
			local good = false
			for _,dir in ipairs(nodecore.dirs()) do
			local posn = vector.add(pos,dir)
			local node = minetest.get_node(posn)
			if breathable[minetest.registered_items[node.name].drawtype] then
				good = true
				break
			end
		end
			if good then
				nodecore.set_node(pos, {name = modname .. ":mossy_hstone"..i})
			end
		end
	})
end

