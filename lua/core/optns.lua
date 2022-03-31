local set = vim.opt
local g = vim.g

local utils = require('core.utils')

set.number = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

if utils.has('termguicolors') then
	set.termguicolors = true
else
	set.t_Co = 256
end


vim.cmd [[
	augroup numbertoggle
		autocmd!
		autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
		autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
	augroup END
]]

