local M = {}

local utils = require('core.utils')

local required_extensions= {
	'coc-lists',
	'coc-higlight',
	'coc-utilsnips',
}


function M.setup()
	local extensions_string = ""
	for _, ext in ipairs(required_extensions) do
		extensions_string = extensions_string .. ext .. " "
	end

	vim.cmd("CocInstall " .. extensions_string)
end

function M.config()
	vim.cmd("inoremap <silent><expr> <c-space> coc#refresh()")
end

return M
