local utils = require('core.utils')

vim.g.mapleader = ' ' -- Set leader to SPC

utils.map_leader("ce", ":Explore " .. utils.config_path .. "<cr>")
utils.map_leader("cE", ":e " .. utils.config_path)

utils.map_leader('<esc>', ":nohlsearch<cr>")
utils.map_leader('bk', ":Bwipeout!<cr>")
utils.map_leader('bn', ":bnext<cr>")

utils.map_leader('w', "<C-w>")

