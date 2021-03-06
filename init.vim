" Python environment
" let g:python3_host_prog = '/Users/carlos/.pyenv/versions/weather/bin/python'
let g:python3_host_prog = '/Users/carlos/.pyenv/shims/python'  " new syntax for upgraded virtualenv


" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Plugins to install
Plug 'neomake/neomake'
Plug 'valloric/youcompleteme' " code completion engine. Make sure to run /{your_plugin_location}/youcompleteme/instal.sh when upgrading or after install
Plug 'ctrlpvim/ctrlp.vim' " open file goodies
Plug 'chriskempson/base16-vim' " base16 color themes for Vim
Plug 'yggdroot/indentline' " display the indention levels with thin vertical lines
Plug 'bling/vim-airline' " status/tabline for vim
Plug 'vim-airline/vim-airline-themes' " color themese for vim-airline
Plug 'scrooloose/nerdtree' " tree file explorer
Plug 'heavenshell/vim-pydocstring'  " auto docstring generator
Plug 'chaimleib/vim-renpy'  " Renpy syntax highlighting

" Initialize plugin system
call plug#end()

" Deoplete plugin settings
let g:deoplete#enable_at_startup = 1

" Vim general settings
:syntax enable
:set number " show vertical line numbers 
:set ruler  " show current cursor line position (line, column)
:set termguicolors

" Neomake settings
"let g:neomake_python_enabled_makers = ['pylint'] " TODO: check why this doesn't work!
let g:neomake_open_list=2
let g:neomake_list_height=5
let g:neomake_place_signs = 1
autocmd! BufWritePost,BufReadPost * Neomake

" Base16-Vim settings
colorscheme base16-phd

" Indentline settings
let g:indentLine_char = '┆'

" Vim-airline-themes settings
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1 " use powerline fonts

" Nerdtree settings
map <C-n> :NERDTreeToggle<CR>  " map to Ctrl-n key
