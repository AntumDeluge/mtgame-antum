--[[ LICENSE HEADER
  
  The MIT License (MIT)
  
  Copyright © 2016 Jordan Irwin
  
  Permission is hereby granted, free of charge, to any person obtaining a copy of
  this software and associated documentation files (the "Software"), to deal in
  the Software without restriction, including without limitation the rights to
  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
  of the Software, and to permit persons to whom the Software is furnished to do
  so, subject to the following conditions:
  
    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.
  
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
  
--]]


local registerCWoodCraft = function(color)
	minetest.register_craft({
		type = "shapeless",
		output = "coloredwood:wood_" .. color,
		recipe = {
			"group:wood", "dye:" .. color,
		},
	})
end


local shadeless_colors = {
	"black",
	"grey", "darkgrey", "lightgrey"
}

minetest.register_alias("dye:darkgrey", "dye:dark_grey")
minetest.register_alias("dye:lightgrey", "dye:light_grey")

for I in pairs(shadeless_colors) do
	local color = shadeless_colors[I]
	antum.clearCraftOutput("coloredwood:wood_" .. color)
	registerCWoodCraft(color, "coloredwood:wood_" .. color)
end


local base_colors = {
	"aqua",
	"blue",
	"cyan",
	"green",
	"lime",
	"magenta",
	"orange",
	"red",
	"redviolet",
	"skyblue",
	"violet",
	"yellow"
}

for I in pairs(base_colors) do
	local prefix = "coloredwood:wood_"
	local suffix = "_s50"
	local color = base_colors[I]
	local s_dark = "dark_"
	local s_med = "medium_"
	local s_light = "light_"
	
	local basecolor = prefix .. color
	local basecolor_s50 = basecolor .. suffix
	local darkcolor = prefix .. s_dark .. color
	local darkcolor_s50 = darkcolor .. suffix
	local medcolor = prefix .. s_med .. color
	local medcolor_s50 = medcolor .. suffix
	local lightcolor = prefix .. s_light .. color
	
	local combos = {
		basecolor, basecolor_s50,
		darkcolor, darkcolor_s50,
		medcolor, medcolor_s50,
		lightcolor,
	}
	
	for C in pairs(combos) do
		antum.clearCraftOutput(combos[C])
	end
	
	registerCWoodCraft(basecolor)
	registerCWoodCraft(basecolor_s50)
	registerCWoodCraft(darkcolor)
	registerCWoodCraft(darkcolor_s50)
	registerCWoodCraft(medcolor)
	registerCWoodCraft(medcolor_s50)
	registerCWoodCraft(lightcolor)
end
