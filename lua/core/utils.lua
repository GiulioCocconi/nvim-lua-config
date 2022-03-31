local M = {}

M.config_path = vim.fn.stdpath('config')
local debug_file = M.config_path .. "/.debug"

-- General functions

function M.file_exists(file_name)
	local file = io.open(file_name, "r")
	if file ~= nil then file:close() return true end
	return false
end

function M.has(feature)
	return vim.fn.has(feature) == 1
end

-- Debug functions

local function check_debug()
	return M.file_exists(debug_file)
end

function M.debug(msg)
	if check_debug() then
		print("[DEBUG] " .. msg)
	end
end

function M.debug_toggle()
	if check_debug() then os.remove(debug_file)
	else local f = io.open(debug_file, "w") f:close()
	end
end

-- Keymap functions

function M.map(mode, lhs, rhs, optns)
	local options = { noremap = true }
	if optns then options = vim.tbl_extend("force", options, optns) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.map_leader(lhs, rhs, mode)
	mode = mode or "n"
	local options = { silent = true }
	vim.api.nvim_set_keymap(mode, "<leader>" .. lhs, rhs, options)
end

-- Update functions

function M.check_update()

	-- TODO: implement it without CHECKING TIME/VAR CONDITIONS

end

return M
