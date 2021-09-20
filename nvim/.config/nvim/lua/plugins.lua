vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    use {
        'xolox/vim-misc'
    }

    use {
        'tpope/vim-commentary',
        event = 'BufEnter'
    }

    use {
        'neoclide/coc.nvim',
        branch = 'release',
        event = 'BufWinEnter'
    }

    -- use {
    --     'mhinz/vim-signify',
    --     event = 'BufWinEnter'
    -- }

    use {
        'airblade/vim-gitgutter',
        event = 'BufWinEnter'
    }


    use {
        'vim-airline/vim-airline-themes',
        event = 'BufWinEnter',
    }
    use {
        'vim-airline/vim-airline',
        event = 'BufWinEnter',
    }

    use {
        'tpope/vim-fugitive',
        event = 'BufWinEnter'
    }

    use {
        'vim-scripts/grep.vim',
        event = 'BufWinEnter'
    }
    use {
        'vim-scripts/CSApprox',
        event = 'BufWinEnter'
    }
    use {
        'jiangmiao/auto-pairs',
        event = 'BufWinEnter'
    }
    use {
        'majutsushi/tagbar',
        event = 'BufWinEnter'
    }
    use {
        'Yggdroot/indentLine',
        event = 'BufWinEnter'
    }
    use {
        'tpope/vim-rhubarb',
        event = 'BufWinEnter'
    }
    use {
        'Shougo/vimproc.vim',
        event = 'BufWinEnter'
    }

    use {
        'prabirshrestha/async.vim',
        event = 'BufWinEnter'
    }
    use {
        'prabirshrestha/asyncomplete.vim',
        event = 'BufWinEnter'
    }
    use {
        'Chiel92/vim-autoformat',
        event = 'BufWinEnter'
    }
    use {
        'editorconfig/editorconfig-vim',
        event = 'BufWinEnter'
    }

    use {
        'nvim-lua/popup.nvim',
        event = 'BufWinEnter'
    }
    use {
        'rendon/vim-rooter',
        event = 'BufWinEnter'
    }
    use {
        'kamykn/popup-menu.nvim',
        event = 'BufWinEnter'
    }
    use {
        'kamykn/spelunker.vim',
        event = 'BufWinEnter'
    }

    use {
        'junegunn/fzf',
        event = 'BufWinEnter'
    }
    use {
        'junegunn/fzf.vim',
        event = 'BufWinEnter'
    }

    -- For Go
    use {
        'fatih/vim-go',
        ft = {'go'},
        event = 'BufWinEnter'
    }

    -- For HTML
    use {
        'hail2u/vim-css3-syntax',
        ft = {'html'},
        event = 'BufEnter'
    }

    use {
        'tpope/vim-haml',
        ft = {'html'},
        event = 'BufEnter'
    }
    use {
        'mattn/emmet-vim',
        ft = {'html'},
        event = 'BufEnter'
    }

    -- For JavaScript
    use {
        'jelera/vim-javascript-syntax',
        ft = {'javascript'},
        event = 'BufEnter'
    }

    -- For TypeScript
    -- use {
    --     use 'leafgarland/typescript-vim',
    --     ft = {'typescript'},
    --     event = 'BufWinEnter'
    -- }
    -- use {
    --     'HerringtonDarkholme/yats.vim',
    --     ft = {'typescript'},
    --     event = 'BufWinEnter'
    -- }

    -- For Svelte
    use {
        'leafOfTree/vim-svelte-plugin',
        ft = {'svelte'},
        event = 'BufEnter'
    }

    use {
        'preservim/nerdtree',
        cmd = {'NERDTreeToggle'}
    }

    -- Themes
    -- use 'morhetz/gruvbox'
    -- use 'wadackel/vim-dogrun'
    -- use 'sainnhe/edge'
    -- use 'gruvbox-community/gruvbox'
    use 'ayu-theme/ayu-vim'

    use { "rcarriga/vim-ultest", requires = {"vim-test/vim-test"}, run = ":UpdateRemotePlugins" }

    use 'mbbill/undotree'

    use 'ryanoasis/vim-devicons'

end)
