local M = {}

local utils = require('core.utils')


function M.config()
	require'nvim-tree'.setup{}
	utils.map_leader("t", ":NvimTreeToggle")
end

return M
