--[[ LICENSE HEADER
  
  MIT License
  
  Copyright © 2017 Jordan Irwin
  
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


local cotton = {}
cotton.dependencies = {"wool"}
cotton.aliases = {"thread", "string"}

cotton.dependencies.satisfied = false
for dep in pairs(cotton.dependencies) do
	if core.get_modpath(dep) then
		cotton.dependencies.satisfied = true
	end
end

if cotton.dependencies.satisfied then
	-- Craft cotton from white wool
	antum.registerCraft({
		output = "farming:cotton 4",
		type = "shapeless",
		recipe = {"wool:white"},
	})
	
	-- Add aliases for cotton
	for alias in pairs(cotton.aliases) do
		core.register_alias("farming:" .. alias, "farming:cotton")
	end
end
