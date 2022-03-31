local M = {}
local utils = require('core.utils')

function M.config() 
	utils.map_leader("ff", ":Telescope find_files<cr>")
	utils.map_leader("fg", ":Telescope live_grep<cr>")
	utils.map_leader("fb", ":Telescope buffers<cr>")
	utils.map_leader("fh", ":Telescope help_tags<cr>")
end

return M
