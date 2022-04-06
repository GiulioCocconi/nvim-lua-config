-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/giulio/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/giulio/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/giulio/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/giulio/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/giulio/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { ' require("Comment").setup() ' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["coc.nvim"] = {
    config = { ' require("plugins.coc").config() ' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/opt/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["dashboard-nvim"] = {
    config = { ' require("plugins.dashboard").config() ' },
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["dressing.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/opt/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { " require('nvim-autopairs').setup{} " },
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-tree.lua"] = {
    config = { ' require("plugins.tree").config() ' },
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["palenight.vim"] = {
    config = { ' require("plugins.theme").config() ' },
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/palenight.vim",
    url = "https://github.com/drewtempelmeyer/palenight.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["suda.vim"] = {
    commands = { "SudaRead", "SudaWrite" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/opt/suda.vim",
    url = "https://github.com/lambdalisue/suda.vim"
  },
  tagbar = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/majutsushi/tagbar"
  },
  ["telescope.nvim"] = {
    config = { ' require("plugins.telescope").config() ' },
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-localvimrc"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/vim-localvimrc",
    url = "https://github.com/embear/vim-localvimrc"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["wilder.nvim"] = {
    config = { " vim.cmd(\"call wilder#setup({'modes': [':', '/', '?']})\") " },
    loaded = true,
    path = "/home/giulio/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
 vim.cmd("call wilder#setup({'modes': [':', '/', '?']})") 
time([[Config for wilder.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
 require("plugins.dashboard").config() 
time([[Config for dashboard-nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
 require('nvim-autopairs').setup{} 
time([[Config for nvim-autopairs]], false)
-- Config for: palenight.vim
time([[Config for palenight.vim]], true)
 require("plugins.theme").config() 
time([[Config for palenight.vim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
 require("plugins.telescope").config() 
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
 require("plugins.tree").config() 
time([[Config for nvim-tree.lua]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SudaRead lua require("packer.load")({'suda.vim'}, { cmd = "SudaRead", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SudaWrite lua require("packer.load")({'suda.vim'}, { cmd = "SudaWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'dressing.nvim', 'coc.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'Comment.nvim', 'neoscroll.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'Comment.nvim', 'neoscroll.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
