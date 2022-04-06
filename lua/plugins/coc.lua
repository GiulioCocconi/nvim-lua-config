local M = {}

local utils = require('core.utils')

local required_extensions = {
	'coc-lists',
	'coc-highlight',
	'coc-ultisnips',
}


function M.setup()
	utils.debug("Coc Setup started!")
	local extensions_string = ""
	for _, ext in ipairs(required_extensions) do
		extensions_string = extensions_string .. ext .. " "
	end

	vim.cmd("CocInstall " .. extensions_string)
end

function M.config()
	vim.cmd("autocmd CursorHold * silent call CocActionAsync('highlight')")
	vim.cmd("inoremap <silent><expr> <c-space> coc#refresh()")

	utils.map("n", "[g",  "<Plug>(coc-diagnostic-prev)", { silent = true })
	utils.map("n", "]g",  "<Plug>(coc-diagnostic-next)", { silent = true })


	utils.map("n", "gd",  "<Plug>(coc-definition)", { silent = true })
	utils.map("n", "gy",  "<Plug>(coc-type-definition)", { silent = true })
	utils.map("n", "gi",  "<Plug>(coc-implementation)", { silent = true })
	utils.map("n", "gr",  "<Plug>(coc-reference)", { silent = true })
end

return M
