local M = {}

function M.config()
	vim.cmd("colorscheme onehalfdark")
	vim.g.airline_theme='onehalfdark'

	vim.g.airline_powerline_fonts = 1

	vim.g["airline#extensions#tabline#enabled"] = 1
end

return M
