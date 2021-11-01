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
local package_path_str = "/home/ffong/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/ffong/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/ffong/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/ffong/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ffong/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
    after_files = { "/home/ffong/.local/share/nvim/site/pack/packer/opt/CSApprox/after/plugin/CSApprox.vim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/CSApprox"
  },
  ["async.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/async.vim"
  },
  ["auto-pairs"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/auto-pairs"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["coc.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/coc.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/emmet-vim"
  },
  fzf = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/fzf"
  },
  ["fzf.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/fzf.vim"
  },
  ["grep.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/grep.vim"
  },
  indentLine = {
    after_files = { "/home/ffong/.local/share/nvim/site/pack/packer/opt/indentLine/after/plugin/indentLine.vim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/indentLine"
  },
  nerdtree = {
    commands = { "NERDTreeToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/nerdtree"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["popup-menu.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/popup-menu.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/popup.nvim"
  },
  ["spelunker.vim"] = {
    after_files = { "/home/ffong/.local/share/nvim/site/pack/packer/opt/spelunker.vim/after/plugin/ctrlp/spelunker.vim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/spelunker.vim"
  },
  tagbar = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/tagbar"
  },
  undotree = {
    loaded = true,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-airline"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-airline-themes"
  },
  ["vim-autoformat"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-autoformat"
  },
  ["vim-commentary"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-commentary"
  },
  ["vim-css3-syntax"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-css3-syntax"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-gitgutter"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-go"
  },
  ["vim-haml"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-haml"
  },
  ["vim-javascript-syntax"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax"
  },
  ["vim-misc"] = {
    loaded = true,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/start/vim-misc"
  },
  ["vim-rhubarb"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-rhubarb"
  },
  ["vim-rooter"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-rooter"
  },
  ["vim-svelte-plugin"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["vim-ultest"] = {
    loaded = true,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/start/vim-ultest"
  },
  ["vimproc.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/ffong/.local/share/nvim/site/pack/packer/opt/vimproc.vim"
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
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-javascript-syntax'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim', 'vim-css3-syntax', 'vim-haml'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType svelte ++once lua require("packer.load")({'vim-svelte-plugin'}, { ft = "svelte" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'CSApprox', 'vim-rooter', 'tagbar', 'async.vim', 'vim-go', 'popup.nvim', 'vim-autoformat', 'auto-pairs', 'editorconfig-vim', 'vim-gitgutter', 'indentLine', 'fzf.vim', 'coc.nvim', 'spelunker.vim', 'fzf', 'vim-airline-themes', 'vimproc.vim', 'vim-fugitive', 'vim-rhubarb', 'vim-airline', 'popup-menu.nvim', 'grep.vim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'emmet-vim', 'vim-svelte-plugin', 'vim-css3-syntax', 'vim-haml', 'vim-javascript-syntax', 'vim-commentary'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
time([[Sourcing ftdetect script at: /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin/ftdetect/svelte.vim]], true)
vim.cmd [[source /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin/ftdetect/svelte.vim]]
time([[Sourcing ftdetect script at: /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin/ftdetect/svelte.vim]], false)
time([[Sourcing ftdetect script at: /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-haml/ftdetect/haml.vim]], true)
vim.cmd [[source /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-haml/ftdetect/haml.vim]]
time([[Sourcing ftdetect script at: /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-haml/ftdetect/haml.vim]], false)
time([[Sourcing ftdetect script at: /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax/ftdetect/javascript.vim]], true)
vim.cmd [[source /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /home/ffong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax/ftdetect/javascript.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
