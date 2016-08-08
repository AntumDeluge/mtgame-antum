local hdoor_list = {   --Number , Description , default image
	{ "cobble" , "Hidden Cobble Door", "default_cobble"},
	{ "stone" , "Hidden Stone Door", "default_stone"},	
	{ "wood", "Hidden Wood Door", "default_wood"},
	{ "stone_brick", "Hidden Stone Brick Door", "default_stone_brick"},
	{ "brick", "Hidden Brick Door", "default_brick"},
	{ "desert_cobble", "Hidden Desert Cobble Door", "default_desert_cobble"},
	{ "furnace", "Hidden Furnace Door" , "mydoors_furnace" , "door7"},
	{ "chest", "Hidden Chest Door" , "mydoors_chest" , "door8"},
	{ "bookshelf", "Hidden Bookshelf Door" , "mydoors_bookshelf" , "door9"},
}


for i in ipairs(hdoor_list) do
	local img = hdoor_list[i][1]
	local desc = hdoor_list[i][2]
	local dimg = hdoor_list[i][3]


mdoors.register_door("my_hidden_doors:hidden_door"..img, {
	description = desc.." Locked",
	inventory_image = "mydoors_"..img.."_inv.png",
	groups = {choppy=2,cracky=2,door=1},
	tiles_bottom = {dimg..".png^[transformFX", "mydoors_"..img.."_edge.png"},
	tiles_top = {dimg..".png^[transformFX", "mydoors_"..img.."_edge.png"},
	only_placer_can_open = false,
})

end
mdoors.register_door("my_hidden_doors:hidden_door_grey", {
	description = "Grey Door Locked",
	inventory_image = "mydoors_grey_inv.png",
	groups = {choppy=2,cracky=2,door=1},
	tiles_bottom = {"mydoors_grey_bottom.png^[transformFX", "mydoors_grey_edge.png"},
	tiles_top = {"mydoors_grey_top.png^[transformFX", "mydoors_grey_edge.png"},
	only_placer_can_open = false,
})
-- Crafts

minetest.register_craft({
	output = "my_hidden_doors:hidden_doorcobble 1",
	recipe = {
		{"my_hidden_doors:hidden_door_grey", "default:cobble", ""},
		{"", "", ""},
		{"", "", ""}
	}
})
minetest.register_craft({
	output = "my_hidden_doors:hidden_doorstone 1",
	recipe = {
		{"my_hidden_doors:hidden_door_grey", "default:stone", ""},
		{"", "", ""},
		{"", "", ""}
	}
})
minetest.register_craft({
	output = "my_hidden_doors:hidden_doorwood 1",
	recipe = {
		{"my_hidden_doors:hidden_door_grey", "default:wood", ""},
		{"", "", ""},
		{"", "", ""}
	}
})
minetest.register_craft({
	output = "my_hidden_doors:hidden_doorstone_brick 1",
	recipe = {
		{"my_hidden_doors:hidden_door_grey", "default:stonebrick", ""},
		{"", "", ""},
		{"", "", ""}
	}
})
minetest.register_craft({
	output = "my_hidden_doors:hidden_doordesert_cobble 1",
	recipe = {
		{"my_hidden_doors:hidden_door_grey", "default:desert_cobble", ""},
		{"", "", ""},
		{"", "", ""}
	}
})
minetest.register_craft({
	output = "my_hidden_doors:hidden_doorfurnace 1",
	recipe = {
		{"my_hidden_doors:hidden_door_grey", "default:furnace", ""},
		{"", "", ""},
		{"", "", ""}
	}
})
minetest.register_craft({
	output = "my_hidden_doors:hidden_doorchest 1",
	recipe = {
		{"my_hidden_doors:hidden_door_grey", "default:chest", ""},
		{"", "", ""},
		{"", "", ""}
	}
})
minetest.register_craft({
	output = "my_hidden_doors:hidden_doorbookshelf 1",
	recipe = {
		{"my_hidden_doors:hidden_door_grey", "default:bookshelf", ""},
		{"", "", ""},
		{"", "", ""}
	}
})
minetest.register_craft({
	output = "my_hidden_doors:hidden_doorbrick 1",
	recipe = {
		{"my_hidden_doors:hidden_door_grey", "default:brick", ""},
		{"", "", ""},
		{"", "", ""}
	}
})
minetest.register_craft({
	output = "my_hidden_doors:hidden_door_grey 1",
	recipe = {
		{"stained_wood:gray_dark", "stained_wood:gray_dark", ""},
		{"stained_wood:gray_dark", "stained_wood:gray_dark", ""},
		{"stained_wood:gray_dark", "stained_wood:gray_dark", ""}
	}
})


