local M = {}

local utils = require('core.utils')

function M.config()
	vim.g.dashboard_default_executive ='telescope'
	vim.g.dashboard_custom_header = {
		'',
		'  ██████╗       ██████╗     █╗  ███████╗     ███╗   ██╗ ██╗   ██╗ ██╗ ███╗   ███╗ ',
		' ██╔════╝      ██╔════╝     ╚╝  ██╔════╝     ████╗  ██║ ██║   ██║ ██║ ████╗ ████║ ',
		' ██║  ███╗     ██║              ███████╗     ██╔██╗ ██║ ██║   ██║ ██║ ██╔████╔██║ ',
		' ██║   ██║     ██║              ╚════██║     ██║╚██╗██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ',
		' ╚██████╔╝ ██╗ ╚██████╗ ██╗     ███████║     ██║ ╚████║  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ',
		'  ╚═════╝  ╚═╝  ╚═════╝ ╚═╝     ╚══════╝     ╚═╝  ╚═══╝   ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ',
	}

	vim.g.dashboard_custom_footer = {
		'',
		"Config loaded :)" 
	}

	utils.map_leader("ss", ":<C-u>SessionSave<CR>")
	utils.map_leader("sl", ":<C-u>SessionLoad<CR>")

	utils.map_leader("fh", ":DashboardFindHistory<CR>")
	utils.map_leader("ff", ":DashboardFindFile<CR>")
	utils.map_leader("tc", ":DashboardChangeColorscheme<CR>")
	utils.map_leader("fa", ":DashboardFindWord<CR>")
	utils.map_leader("fb", ":DashboardJumpMark<CR>")
	utils.map_leader("cn", ":DashboardNewFile<CR>")
end

return M
