local utils = require("core.utils")

local core_files = {
	"core.plugins",
	"core.optns",
	"core.cmds",
	"core.bindings",
}

for _, file in ipairs(core_files) do
	require(file)
	utils.debug("Required " .. file)
end
