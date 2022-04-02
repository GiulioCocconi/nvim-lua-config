vim.cmd([[
	command! Td			lua require('core.utils').debug_toggle()
	command! Ps			lua require('core.utils').plugin_sync()
	command! Scratch 	lua require('core.utils').new_scratch_buffer()
	command! Devdocs	lua require('core.utils').get_devdocs(vim.fn.expand("<cword>"))
]])
