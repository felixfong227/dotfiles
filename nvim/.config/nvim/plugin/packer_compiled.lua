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
local package_path_str = "/Users/felixfong/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/felixfong/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/felixfong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/felixfong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/felixfong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  CSApprox = {
    after_files = { "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/CSApprox/after/plugin/CSApprox.vim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/CSApprox",
    url = "https://github.com/vim-scripts/CSApprox"
  },
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
  ["ayu-vim"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["coc.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  fzf = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["grep.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/grep.vim",
    url = "https://github.com/vim-scripts/grep.vim"
  },
  indentLine = {
    after_files = { "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/indentLine/after/plugin/indentLine.vim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  nerdtree = {
    commands = { "NERDTreeToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
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
  ["vim-css3-syntax"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-css3-syntax",
    url = "https://github.com/hail2u/vim-css3-syntax"
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
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-haml"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-haml",
    url = "https://github.com/tpope/vim-haml"
  },
  ["vim-javascript-syntax"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax",
    url = "https://github.com/jelera/vim-javascript-syntax"
  },
  ["vim-misc"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/vim-misc",
    url = "https://github.com/xolox/vim-misc"
  },
  ["vim-rhubarb"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-rooter"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-rooter",
    url = "https://github.com/rendon/vim-rooter"
  },
  ["vim-svelte-plugin"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin",
    url = "https://github.com/leafOfTree/vim-svelte-plugin"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-ultest"] = {
    loaded = true,
    path = "/Users/felixfong/.local/share/nvim/site/pack/packer/start/vim-ultest",
    url = "https://github.com/rcarriga/vim-ultest"
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

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NERDTreeToggle lua require("packer.load")({'nerdtree'}, { cmd = "NERDTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim', 'vim-css3-syntax', 'vim-haml'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-javascript-syntax'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType svelte ++once lua require("packer.load")({'vim-svelte-plugin'}, { ft = "svelte" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'vim-rhubarb', 'vim-rooter', 'vimproc.vim', 'async.vim', 'auto-pairs', 'indentLine', 'editorconfig-vim', 'fzf', 'popup-menu.nvim', 'popup.nvim', 'tagbar', 'vim-airline', 'vim-airline-themes', 'vim-autoformat', 'CSApprox', 'vim-fugitive', 'grep.vim', 'vim-gitgutter', 'coc.nvim', 'vim-go', 'spelunker.vim', 'fzf.vim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'vim-svelte-plugin', 'emmet-vim', 'vim-commentary', 'vim-css3-syntax', 'vim-haml', 'vim-javascript-syntax'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin/ftdetect/svelte.vim]], true)
vim.cmd [[source /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin/ftdetect/svelte.vim]]
time([[Sourcing ftdetect script at: /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin/ftdetect/svelte.vim]], false)
time([[Sourcing ftdetect script at: /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
time([[Sourcing ftdetect script at: /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-haml/ftdetect/haml.vim]], true)
vim.cmd [[source /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-haml/ftdetect/haml.vim]]
time([[Sourcing ftdetect script at: /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-haml/ftdetect/haml.vim]], false)
time([[Sourcing ftdetect script at: /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax/ftdetect/javascript.vim]], true)
vim.cmd [[source /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /Users/felixfong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax/ftdetect/javascript.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
