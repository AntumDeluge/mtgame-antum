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


-- Remove dye recipes that do not have a matching flower color

local rcolors = {
	'black', 'brown', 'cyan', 'dark_green', 'dark_grey', 'green', 'grey',
	'magenta', 'pink',
}

for I in pairs(rcolors) do
	antum.clearCraftRecipe(
		{'group:flower,color_' .. rcolors[I]}
	)
end


local function registerDyeRecipes(def)
	for I, T in pairs(def) do
		local dye = 'dye:' .. T[1]
		local ingredients = T[2]
		-- DEBUG
		minetest.log('action', '[antum_overrides] Registering new recipe for dye:' .. T[1] .. ' with the following ingredients:')
		for i in pairs(ingredients) do
			minetest.log('action', '[antum_overrides]\t' .. ingredients[i])
		end
		
		minetest.register_craft({
			output = dye,
			type = 'shapeless',
			recipe = ingredients,
		})
	end
end

local dye_defs = {}

if minetest.get_modpath('flowers') then
	table.insert(dye_defs, -1, {'brown 4', {'flowers:mushroom_brown'}})
end

registerDyeRecipes(dye_defs)
