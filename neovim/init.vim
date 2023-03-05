"Vimrc
" Reload with nvim -c ":source ~/.config/nvim/init.vim" init.vim 
" START PLUG CALL
call plug#begin('~/.local/share/nvim/plugged')
" Install coc"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Enable signs for Coc diagnostic messages
sign define CocError text=▶
sign define CocWarning text=▶:
" Adds PythonPath"
let g:python3_host_prog = '/usr/bin/python3'
"Defines Python NLP Engine"
let g:LanguageClient_serverCommands = {
      \ 'python': ['python-language-server', '--stdio'],
      \ }
" Install NerdTree"
Plug 'preservim/nerdtree'
"Install Fuzzy Finder and auto update
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Install vim-airline"
Plug 'vim-airline/vim-airline'
" TreeSitter Plug Install"
Plug 'nvim-treesitter/nvim-treesitter'
" Airline Enable
let g:airline#extensions#tabline#enabled = 1
" Surround Plugin
Plug 'tpope/vim-surround'
"Add Caps lock for surround
Plug 'tpope/vim-capslock'
"Add Autosurround "auto-pairs''''
Plug 'jiangmiao/auto-pairs'
"Enable capslock 
let g:capslock_enabled = 1
"END PLUG CALL 
call plug#end()
" Auto-Enable Plugins"
"autocmd BufEnter * PlugInstall --sync | PlugUpdate --sync | PlugClean --sync"
"Syntax Highligting
set termguicolors
set background=dark
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
let g:indentLine_concealcursor = 'inc'
syntax enable
set completeopt=menuone,noinsert,noselect
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'
set foldmethod=indent
set foldlevel=99
highlight IndentBlanklineIndent ctermbg=none
let g:indent_blankline_show_trailing_blankline_indent = 0
let g:indent_blankline_show_first_indent_level = 1
let g:indent_blankline_use_treesitter = 1
let g:indent_blankline_show_current_context = 1
set foldexpr=nvim_treesitter#foldexpr()
" Use Tab to navigate completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Use Shift-Tab to navigate completion list backwards
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Mappings for surround 
" Default key mappings
map ds <Plug>Dsurround
map cs <Plug>Csurround
map ys <Plug>Ysurround
map yss <Plug>YSsurround
map yS <Plug>YSsurround
map ySS <Plug>YSsurround
"Autosurround settings

