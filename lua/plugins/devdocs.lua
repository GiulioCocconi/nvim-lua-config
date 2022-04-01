local M = {}

local utils = require('core.utils')

function M.config()
	utils.leader_map("z", ":DevDocsUnderCursor")
end

return M
