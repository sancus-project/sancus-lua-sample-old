--

require "sancus.utils"

local sibling_modules = sancus.utils.sibling_modules
local ipairs, require = ipairs, require

module (...)

for _,x in ipairs(sibling_modules()) do
	require(_NAME.."."..x)
end
