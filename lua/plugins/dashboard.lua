local M = {}

local utils = require('core.utils')
local icons = utils.icons
local dashboard = require('dashboard')

function M.config()
	--vim.g.dashboard_default_executive ='telescope'
	dashboard.custom_header = {
		'',
		'  ██████╗       ██████╗     █╗  ███████╗     ███╗   ██╗ ██╗   ██╗ ██╗ ███╗   ███╗ ',
		' ██╔════╝      ██╔════╝     ╚╝  ██╔════╝     ████╗  ██║ ██║   ██║ ██║ ████╗ ████║ ',
		' ██║  ███╗     ██║              ███████╗     ██╔██╗ ██║ ██║   ██║ ██║ ██╔████╔██║ ',
		' ██║   ██║     ██║              ╚════██║     ██║╚██╗██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ',
		' ╚██████╔╝ ██╗ ╚██████╗ ██╗     ███████║     ██║ ╚████║  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ',
		'  ╚═════╝  ╚═╝  ╚═════╝ ╚═╝     ╚══════╝     ╚═╝  ╚═══╝   ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ',
		'', '',
	}

	 dashboard.custom_center = {
		{icon = icons.fileBg,		desc = 'Find File',			action = 'Telescope find_files hidden=true'},
		{icon = icons.fileCopy,		desc = 'Recents',			action = 'Telescope oldfiles hidden=true'},
		{icon = icons.timer,		desc = 'Load Last Session', action = 'SessionLoad'},
		{icon = icons.container,	desc = 'Sync Plugins',		action = 'PackerSync'},
		{icon = icons.error,		desc = 'Exit ',				action = 'exit'},
	}

	dashboard.custom_footer = {
		'',
		"Config loaded :)"
	}
end

return M
