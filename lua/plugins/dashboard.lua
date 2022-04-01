local M = {}

local utils = require('core.utils')
local icon = utils.icons

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

	vim.g.dashboard_custom_section = {
		a = {description = {icon.fileBg .. 'Find File          '}, command = 'Telescope find_files hidden=true'},
		b = {description = {icon.fileCopy .. 'Recents            '}, command = 'Telescope oldfiles hidden=true'},
		c = {description = {icon.timer ..        'Load Last Session  '}, command = 'SessionLoad'},
		d = {description = {icon.container ..    'Sync Plugins       '}, command = 'PackerSync'},
		e = {description = {icon.error ..    'Exit               '}, command = 'exit'},
	}

	vim.g.dashboard_custom_footer = {
		'',
		"Config loaded :)"
	}
end

return M
