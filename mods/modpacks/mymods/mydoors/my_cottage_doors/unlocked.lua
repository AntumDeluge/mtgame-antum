local cdoor_list = {   --Number , Description , Inven Image , Image
--	{"Cottage Door 1" , "door1"},
	{"Cottage Door 2" , "door2"},
}


for i in ipairs(cdoor_list) do
	local desc = cdoor_list[i][1]
	local img = cdoor_list[i][2]


doors.register_door("my_cottage_doors:"..img, {
	description = desc,
	inventory_image = "mycdoors_"..img.."_inv.png",
	groups = {choppy=2,cracky=2,door=1},
	tiles = {{name="mycdoors_"..img..".png", backface_culling = true}},
	protected = false,
})
end

-- Crafts

minetest.register_craft({
	output = "my_cottage_doors:door1 1",
	recipe = {
		{"colored_wood:wood_yellow", "colored_wood:wood_yellow", "default:steel_ingot"},
		{"colored_wood:wood_yellow", "colored_wood:wood_yellow", ""},
		{"colored_wood:wood_yellow", "colored_wood:wood_yellow", "default:steel_ingot"}
	}
})

minetest.register_craft({
	output = "my_cottage_doors:door2 1",
	recipe = {
		{"colored_wood:wood_red", "colored_wood:wood_red", ""},
		{"colored_wood:wood_red", "colored_wood:wood_red", ""},
		{"colored_wood:wood_red", "colored_wood:wood_red", ""}
	}
})
