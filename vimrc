" ############################################################################
" General and standard settings:
" ############################################################################
set number
set relativenumber
set scrolloff=2
set wrap
set ruler
syntax on

" timeout speeds
set timeout ttimeout         " separate mapping and keycode timeouts
set timeoutlen=500           " mapping timeout 500ms  (adjust for preference)
set ttimeoutlen=20           " keycode timeout 20ms

" Set mouse controls
set mouse=a

" Sets the clipboard and 'p' as paste 
" *must install vim-gtk*
" set clipboard=unnamedplus " Older way for linux & WSL2 only
" Better setting for OSX vs Linux
if system('uname -s') == "Darwin\n"
  set clipboard=unnamed " for OSX
else
  set clipboard=unnamedplus " for Linux
endif

" Parenthesis coloring
hi MatchParen cterm=bold ctermbg=none ctermfg=blue

" Tabs controls
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.css,*.js setlocal tabstop=2 shiftwidth=2 softtabstop=2
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

" Auto/smart indents are on
set smartindent
" wraps text
set nowrap
set textwidth=0
set wrapmargin=0
set wrap!
set smartcase
set noswapfile
set nobackup
set completeopt=menu,noinsert
set completeopt-=noselect


" Cursorline settings
" color desert
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
"#############################################################################
" Sets status bar
" ############################################################################
let g:airline_theme='papercolor'
" let g:airline_theme='luna'

" Airline
" Enable Airline
let g:airline#extensions#branch#enabled = 1
" Show list of buffers in tabline
let g:airline#extensions#tabline#enabled = 1
" Show just the filename in tabline
let g:airline#extensions#tabline#fnamemod = ':t'
" Use fonts
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
     let g:airline_symbols = {}
endif


" Airline symbols

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" ############################################################################
" sets the color for where the line should end.
" ############################################################################
set colorcolumn=80
" highlight ColorColumn ctermbg=8 guibg=darkgrey
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey
" ############################################################################
" plugins:
" ############################################################################
call plug#begin('~/.vim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Plugin for auto-pairing
Plug 'chun-yang/auto-pairs'
" Bar theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Ayu color scheme
Plug 'ayu-theme/ayu-vim'
" Emmet for html
Plug 'mattn/emmet-vim'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Autocomplete COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Prettier plugin
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Nerd Tree is a way to select files from vim
Plug 'preservim/nerdtree'
" Vim notetaking
Plug 'vimwiki/vimwiki'

call plug#end()
" ############################################################################
" Cursor Change
" ############################################################################
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" ############################################################################
" Nerd Tree toggle shortcut (ctrl - n):
" ############################################################################
map <C-n> : NERDTreeToggle<CR>

" Delete the buffer of the file you just deleted with nerdtree
let NERDTreeAutoDeleteBuffer = 1

" Quit on open
let NERDTreeQuitOnOpen = 1

" Make it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Tab movement
map  <C-j> :tabn<CR>
map  <C-k> :tabp<CR>
map  <C-t> :tabnew<CR>

" ############################################################################
" Emmet config for html boiler plate:
" ############################################################################
let g:user_emmet_leader_key='\'

" ############################################################################
" Prettier Config
" ############################################################################
let g:prettier#autoformat_require_pragma = 0

" ############################################################################
" Colorscheme (Use if needed)
" ############################################################################
"set background=dark
"set termguicolors
"let ayucolor="dark"
"colorscheme ayu
