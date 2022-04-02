local M = {}

function M.config()
	--vim.cmd("colorscheme onehalfdark")
	--vim.g.airline_theme='onehalfdark'

	vim.cmd("colorscheme palenight")
	vim.g.airline_theme='palenight'


	vim.g.airline_symbols_ascii = 1
	vim.g["airline#extensions#tabline#enabled"] = 1
end

return M
