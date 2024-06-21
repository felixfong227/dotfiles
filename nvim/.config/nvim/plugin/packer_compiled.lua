-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/felixfong/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/Users/felixfong/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/Users/felixfong/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/Users/felixfong/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/felixfong/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
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
  ["async.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/async.vim",
    url = "https://github.com/prabirshrestha/async.vim"
  },
  ["auto-pairs"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["grep.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/grep.vim",
    url = "https://github.com/vim-scripts/grep.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  nerdtree = {
    commands = { "NERDTreeToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-dev-container"] = {
    config = { "\27LJ\2\nΩ\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\2B\0\2\1K\0\1\0\18attach_mounts\1\0\0\17neovim_state\1\0\1\fenabled\2\16neovim_data\1\0\1\fenabled\2\18neovim_config\1\0\0\1\0\1\fenabled\2\nsetup\17devcontainer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/nvim-dev-container",
    url = "https://github.com/esensar/nvim-dev-container"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nå\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\2\0\0\njsonc\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup-menu.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/popup-menu.nvim",
    url = "https://github.com/kamykn/popup-menu.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["spelunker.vim"] = {
    after_files = { "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/spelunker.vim/after/plugin/ctrlp/spelunker.vim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/spelunker.vim",
    url = "https://github.com/kamykn/spelunker.vim"
  },
  tagbar = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/tagbar",
    url = "https://github.com/majutsushi/tagbar"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-airline"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-autoformat"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-autoformat",
    url = "https://github.com/Chiel92/vim-autoformat"
  },
  ["vim-commentary"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-misc"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/vim-misc",
    url = "https://github.com/xolox/vim-misc"
  },
  ["vim-rooter"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-rooter",
    url = "https://github.com/rendon/vim-rooter"
  },
  ["vimproc.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vimproc.vim",
    url = "https://github.com/Shougo/vimproc.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'NERDTreeToggle', function(cmdargs)
          require('packer.load')({'nerdtree'}, { cmd = 'NERDTreeToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nerdtree'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NERDTreeToggle ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'vim-fugitive', 'popup.nvim', 'tagbar', 'vim-airline', 'vim-rooter', 'grep.vim', 'vimproc.vim', 'nvim-dev-container', 'auto-pairs', 'vim-autoformat', 'vim-airline-themes', 'async.vim', 'nvim-treesitter', 'popup-menu.nvim', 'spelunker.vim', 'vim-gitgutter'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'vim-commentary'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
