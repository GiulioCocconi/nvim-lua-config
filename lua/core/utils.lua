local M = {}

M.config_path = vim.fn.stdpath('config')
local debug_file = M.config_path .. "/.debug"

-- General functions

M.icons = {
	abc                 = '  ',
	arrowReturn         = '  ',
	bomb                = '  ',
	box                 = '  ',
	buffer              = ' ﬘ ',
	calculator          = '  ',
	checkSquare         = '  ',
	container           = '  ',
	cubeTree            = '  ',
	curlies             = '  ',
	database            = ' ﬘ ',
	emptyBox            = '  ',
	error               = '  ',
	errorOutline        = '  ',
	errorSlash          = ' ﰸ ',
	f                   = '  ',
	fileBg              = '  ',
	fileCopy            = '  ',
	fileCutCorner       = '  ',
	fileNoBg            = '  ',
	fileNoLines         = '  ',
	fileNoLinesBg       = '  ',
	folder              = '  ',
	folderNoBg          = '  ',
	folderOpen          = '  ',
	folderOpen2         = ' ﱮ ',
	folderOpenNoBg      = '  ',
	gears               = '  ',
	git                 = '  ',
	gitAdd              = '  ',
	gitChange           = ' 柳',
	gitRemove           = '  ',
	happyFace           = ' ﲃ ',
	hexCutOut           = '  ',
	info                = '  ',
	infoOutline         = '  ',
	key                 = '  ',
	light               = '  ',
	lightbulb           = '  ',
	lightbulbOutline    = '  ',
	m                   = ' m ',
	numbers             = '  ',
	paint               = '  ',
	paragraph           = '  ',
	pencil              = '  ',
	pie                 = '  ',
	rectangleIntersect  = ' 練',
	ribbon              = '  ',
	ribbonNoBg          = '  ',
	ruler               = ' 塞',
	scissors            = '  ',
	scope               = '  ',
	search              = '  ',
	settings            = '  ',
	sort                = '  ',
	spell               = ' 暈',
	snippet             = '  ',
	t                   = '  ',
	terminal            = '  ',
	threeDots           = '  ',
	threeDotsBoxed      = '  ',
	timer               = '  ',
	toggleSelected      = ' 蘒',
	tree                = '  ',
	treeDiagram         = '  ',
	vim                 = '  ',
	warningCircle       = '  ',
	warningTriangle     = '  ',
	warningTriangleNoBg = '  ',
	wrench              = '  ',
}


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

local bindings_added = {}

function M.map(mode, lhs, rhs, optns)
	local options = { noremap = true }
	if optns then options = vim.tbl_extend("force", options, optns) end
	if bindings_added[lhs] ~= nil and bindings_added[lhs] ~= rhs then
		local old_rhs = bindings_added[lhs]
		print(string.format("Unable to map %s to %s since it's already mapped to %s", lhs, rhs, old_rhs))
		return
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
	bindings_added[lhs] = rhs
end

function M.map_leader(lhs, rhs, mode)
	mode = mode or "n"
	local options = { silent = true }
	M.map(mode, "<leader>" .. lhs, rhs, options)
end

function M.get_bindings_list()
	for k,v in pairs(bindings_added) do
		print(string.format("[%s] %s", k, v))
	end
end

-- Update functions

function M.check_update()

	-- TODO: implement it without CHECKING TIME/VAR CONDITIONS

end

function M.update_remote_plugins()
	M.debug("Updating remote plugins...")

	vim.cmd("runtime! plugin/rplugin.vim")
	vim.cmd("UpdateRemotePlugins")
end

function M.plugin_sync()
	require('core.plugins')
	require('packer').sync()
end

return M
