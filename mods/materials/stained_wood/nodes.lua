
--  The MIT License (MIT)
--  
--  Copyright © 2016 Jordan Irwin
--  
--  Permission is hereby granted, free of charge, to any person obtaining a copy of
--  this software and associated documentation files (the "Software"), to deal in
--  the Software without restriction, including without limitation the rights to
--  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
--  of the Software, and to permit persons to whom the Software is furnished to do
--  so, subject to the following conditions:
--  
--    The above copyright notice and this permission notice shall be included in
--    all copies or substantial portions of the Software.
--  
--  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--  SOFTWARE.



-- Define function for adding a stained wood
addStainedWood = function(color)
	local node_name = "stained_wood:" .. color
	local description = titleize(color) .. " Stained Wood"
	
	if color == "gray_dark" then
		description = "Dark Gray Stained Wood"
	end
	
	minetest.register_node(node_name, {
		description = description,
		tiles = {"wood_" .. color .. ".png"},
		is_ground_content = false,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		sounds = default.node_sound_wood_defaults(),
	})
	
	logMessage("nodes.lua: Registered node '" .. node_name .. "'")
end


-- Register all stained wood
for i = 1, wood_colors_count do
	addStainedWood(wood_colors[i])
end
