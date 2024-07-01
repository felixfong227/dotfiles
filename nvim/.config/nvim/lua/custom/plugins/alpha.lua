return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  opts = function()
    local dashboard = require 'alpha.themes.dashboard'
    local logo = [[
                    ⣿⠃⠀⠀⠀⠩⠈⠉⠉⢰⠛⣦⣀⠀⠈⠀⠈⠉⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠉⠠⠂⠀⠀⠰⠋⠩⠉⢉⡍⠉⠀⠀⠀⠀⠀⠀⠀
                    ⣿⠀⠀⠀⠀⠀⠀⠈⡻⢯⡀⠀⠐⠀⠀⠃⠀⠈⠀⠁⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠁⠈⠀⠀⢀⡀⠀⠀⠀⠀⠀
                    ⠟⠃⠁⠀⠀⠀⢀⡀⣠⢾⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠮⣄⠀⠀⠀⠀⠀
                    ⠀⠀⠀⠀⠀⠀⠀⣰⠟⠀⢉⣧⡀⠀⠀⠀⠀⠀⣠⡖⠒⣦⡀⠀⠀⠀⠀⠐⣄⠀⠀⠀⠀⠀⠀⠀⠐⠉⢹⠀⠀⠀⠀⠀⢺⠀⡄⠀⠀⠀
                    ⠀⠀⢀⣀⣤⣀⡀⠀⠉⠣⠾⠯⠽⠟⠛⠀⠀⠀⠀⡓⠲⠿⠽⠷⠄⠀⠀⠀⠏⢻⠆⠀⣀⡔⠀⠀⠀⠒⢟⡠⠀⠀⠀⠀⠀⠉⣁⣤⣤⡀
                    ⠀⠀⡞⠁⠀⠈⠙⢲⣤⡀⠀⢤⣄⡀⠀⠀⠀⠀⠀⣿⣷⣦⣄⠀⠀⣼⣷⡀⠀⣸⣴⣾⣿⡇⠀⠀⠀⠀⢀⣠⣤⠀⢀⣤⡖⠋⠁⠀⠀⢻
                    ⠀⠠⡇⠀⠀⠀⠀⠘⣿⣿⣷⣼⣿⣿⣷⣶⣤⣤⣤⣿⣿⣿⣿⣿⣶⣿⣿⣷⣾⣿⣿⣿⣿⣥⣤⣤⣴⣾⣿⣿⣧⣶⣿⣿⡇⠀⠀⠀⣀⣸
                    ⠀⠀⣧⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⢻⡀
                    ⠀⠀⢸⡀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⢠⡞⠃
                    ⠀⠀⠀⣧⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠛⠛⠛⠛⠛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⣽⠀
                    ⠀⠀⠀⢹⡄⠀⢶⠤⣄⣘⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠀⣀⣠⣤⣤⣶⣶⣦⣤⣄⣀⠀⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⡇⣀⠤⣶⠀⢀⡏⠀
                    ⠀⠀⠀⠀⢷⠀⠘⣦⠀⠉⠻⣿⣿⣿⣿⡿⠋⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⡀⠉⢿⣿⣿⣿⣿⠟⠉⠀⣰⠃⠀⡼⠀⠀
                    ⠀⠀⠀⠀⠘⢧⠀⠈⢧⡀⠀⠙⣿⣿⠏⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠹⣿⣿⠏⠀⠀⡴⠃⠀⣰⠃⠀⠀
                    ⠀⢠⠀⣀⠀⠘⣆⠀⠀⢳⡄⠀⢸⠏⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠸⡇⠀⢀⡞⠁⠀⢰⠇⠀⠀⠀
                    ⠀⠈⠤⢧⣀⣀⣘⣆⡴⠛⠛⣶⡟⠳⣼⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⢹⣧⡔⢛⣶⠚⠛⢢⣠⣋⣀⣀⠀⠀
                    ⠀⠀⠀⠀⠻⣍⠁⠹⣧⠀⢠⣿⣿⡄⢻⣷⠀⠀⠀⠈⢙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⣼⡿⠀⣿⣿⡆⠀⢸⡏⠈⣩⡟⠃⠀
                    ⠀⠀⠀⠀⣀⣈⣳⣄⢻⡀⢸⡿⢿⣇⠸⣿⣷⣤⣤⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣤⣤⣾⣿⡇⢸⣿⣿⡇⢀⡟⢠⣼⣉⣀⠀⠀
                    ⠀⠀⠀⠀⢹⣤⠍⠀⠈⢧⢸⣇⡀⢻⠀⣿⡿⢿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⠿⣿⠀⣏⠘⢛⣇⣼⠁⠈⠁⢁⡟⠀⠀
                    ⠀⠀⠀⠀⠀⠹⣄⠀⠀⠈⢿⣿⣿⣿⠀⢿⣧⢻⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⡷⣰⣿⠀⣿⣷⣿⣿⠃⠀⠀⣠⠞⠀⡘⠁
                    ⠀⠀⠀⠀⠀⠀⠈⠳⢦⣄⠈⢻⣿⣿⠀⣸⣿⣿⣿⣿⣷⡹⣿⠿⣟⣫⣽⣛⠿⢿⢟⣵⣿⣿⣿⣿⣿⠀⣿⣿⡿⠁⣀⡤⠞⠁⠀⢠⠁⠀
                    ⠀⠀⠀⠀⠀⠀⠀⣀⣴⣋⣠⡄⠙⢿⣀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣄⡼⠋⢀⣄⣈⣳⣄⢑⠒⠎⠀⠀
                    ⠀⠀⠀⠀⠀⠀⠀⢀⡽⠛⠿⠶⠶⣶⡾⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠿⣶⡶⠶⠿⠟⢯⡀⠀⢹⠃⠀⠀
                    ⠀⠀⠀⠀⠀⠀⠀⠈⢙⣒⡶⠶⠛⠁⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠈⠙⠶⢶⣒⡛⠉⠀⡇⠀⠀⠀
                    ⠀⠀⠀⠀⠀⠀⣀⣈⣻⣧⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣄⣀⣉⣭⣭⡭⠾⣿⡖⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣼⣟⣁⣀⡗⠁⠀⠀
                    ⠀⠀⠀⠀⠀⠀⠻⣅⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⣀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣨⠟⠁⠀⠀⠀
                    ⠀⠀⠀⠀⠀⠀⠀⠈⣹⠶⢤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠚⠛⢦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠶⣎⡁⠀⠀⠀⠀⠀

    _      __       __    _          __        _          ______                 __           
   (_)____/ /_     / /_  (_)___     / /_____  (_)___     /_  __/___  ____ ______/ /____  _____
  / / ___/ __ \   / __ \/ / __ \   / //_/ _ \/ / __ \     / / / __ \/ __ `/ ___/ __/ _ \/ ___/
 / / /__/ / / /  / /_/ / / / / /  / ,< /  __/ / / / /    / / / /_/ / /_/ (__  ) /_/  __/ /    
/_/\___/_/ /_/  /_.___/_/_/ /_/  /_/|_|\___/_/_/ /_/    /_/  \____/\__,_/____/\__/\___/_/     

]]

    dashboard.section.header.val = vim.split(logo, '\n')
    dashboard.section.buttons.val = {
      dashboard.button('f', '󰍉 ' .. ' Find', ':Telescope find_files <CR>'),
      dashboard.button('g', '󱡴 ' .. ' Grep', ':Telescope live_grep <CR>'),
      -- dashboard.button("r", " " .. " Recent", ":Telescope oldfiles <CR>"),
      dashboard.button('R', ' ' .. ' Restore', [[:lua require("persistence").load() <cr>]]),
      -- dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
      dashboard.button('L', '󰒲 ' .. ' LazyVim', ':Lazy<CR>'),
      dashboard.button('q', ' ' .. ' Quit', ':qa<CR>'),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = 'AlphaButtons'
      button.opts.hl_shortcut = 'AlphaShortcut'
    end
    dashboard.section.footer.opts.hl = 'Type'
    dashboard.section.header.opts.hl = 'AlphaHeader'
    dashboard.section.buttons.opts.hl = 'AlphaButtons'
    -- dashboard.opts.layout[1].val = 8
    return dashboard
  end,
  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == 'lazy' then
      vim.cmd.close()
      vim.api.nvim_create_autocmd('User', {
        pattern = 'AlphaReady',
        callback = function()
          require('lazy').show()
        end,
      })
    end

    require('alpha').setup(dashboard.opts)

    vim.api.nvim_create_autocmd('User', {
      pattern = 'LazyVimStarted',
      callback = function()
        local stats = require('lazy').stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = '⚡ Neovim loaded ' .. stats.count .. ' plugins in ' .. ms .. 'ms'
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
