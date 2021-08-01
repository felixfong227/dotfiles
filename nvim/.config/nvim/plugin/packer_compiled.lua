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
local package_path_str = "/home/felixfong/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/felixfong/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/felixfong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/felixfong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/felixfong/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    after_files = { "/home/felixfong/.local/share/nvim/site/pack/packer/opt/CSApprox/after/plugin/CSApprox.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/CSApprox"
  },
  ["async.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/async.vim"
  },
  ["asyncomplete.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/asyncomplete.vim"
  },
  ["auto-pairs"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/coc.nvim"
  },
  edge = {
    loaded = true,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/start/edge"
  },
  ["editorconfig-vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/emmet-vim"
  },
  fzf = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/fzf"
  },
  ["fzf.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/fzf.vim"
  },
  ["grep.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/grep.vim"
  },
  indentLine = {
    after_files = { "/home/felixfong/.local/share/nvim/site/pack/packer/opt/indentLine/after/plugin/indentLine.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/indentLine"
  },
  nerdtree = {
    commands = { "NERDTreeToggle" },
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/nerdtree"
  },
  ["popup-menu.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/popup-menu.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/popup.nvim"
  },
  ["spelunker.vim"] = {
    after_files = { "/home/felixfong/.local/share/nvim/site/pack/packer/opt/spelunker.vim/after/plugin/ctrlp/spelunker.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/spelunker.vim"
  },
  tagbar = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/tagbar"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/start/typescript-vim"
  },
  ["vim-airline"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-airline-themes"
  },
  ["vim-autoformat"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-autoformat"
  },
  ["vim-coloresque"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-coloresque"
  },
  ["vim-commentary"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-commentary"
  },
  ["vim-css3-syntax"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-css3-syntax"
  },
  ["vim-fugitive"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-go"
  },
  ["vim-haml"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-haml"
  },
  ["vim-javascript-syntax"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax"
  },
  ["vim-lua-ftplugin"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-lua-ftplugin"
  },
  ["vim-lua-inspect"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-lua-inspect"
  },
  ["vim-misc"] = {
    loaded = true,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/start/vim-misc"
  },
  ["vim-rhubarb"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-rhubarb"
  },
  ["vim-rooter"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-rooter"
  },
  ["vim-signify"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-signify"
  },
  ["vim-svelte-plugin"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin"
  },
  ["vimproc.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/vimproc.vim"
  },
  ["yats.vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/felixfong/.local/share/nvim/site/pack/packer/opt/yats.vim"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NERDTreeToggle lua require("packer.load")({'nerdtree'}, { cmd = "NERDTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType lua ++once lua require("packer.load")({'vim-lua-ftplugin', 'vim-lua-inspect'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'vim-coloresque', 'emmet-vim', 'vim-haml', 'vim-css3-syntax'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'yats.vim'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-javascript-syntax'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType svelte ++once lua require("packer.load")({'vim-svelte-plugin'}, { ft = "svelte" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'CSApprox', 'vim-rooter', 'tagbar', 'async.vim', 'asyncomplete.vim', 'vim-go', 'vim-autoformat', 'auto-pairs', 'editorconfig-vim', 'vim-rhubarb', 'indentLine', 'fzf.vim', 'fzf', 'spelunker.vim', 'grep.vim', 'vim-fugitive', 'popup-menu.nvim', 'vimproc.vim', 'coc.nvim', 'popup.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'vim-coloresque', 'yats.vim', 'emmet-vim', 'vim-commentary', 'vim-lua-ftplugin', 'vim-svelte-plugin', 'vim-haml', 'vim-css3-syntax', 'vim-javascript-syntax', 'vim-lua-inspect', 'vim-signify', 'vim-airline', 'vim-airline-themes'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], true)
vim.cmd [[source /home/felixfong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], true)
vim.cmd [[source /home/felixfong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]]
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], false)
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin/ftdetect/svelte.vim]], true)
vim.cmd [[source /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin/ftdetect/svelte.vim]]
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-svelte-plugin/ftdetect/svelte.vim]], false)
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-haml/ftdetect/haml.vim]], true)
vim.cmd [[source /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-haml/ftdetect/haml.vim]]
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-haml/ftdetect/haml.vim]], false)
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax/ftdetect/javascript.vim]], true)
vim.cmd [[source /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /home/felixfong/.local/share/nvim/site/pack/packer/opt/vim-javascript-syntax/ftdetect/javascript.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
