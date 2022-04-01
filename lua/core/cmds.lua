vim.cmd([[
	command! Td lua require('core.utils').debug_toggle()
	command! Ps lua require('core.utils').plugin_sync()
	]])
