" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" to do git from vim
Plug 'tpope/vim-fugitive'

" to interact with R
Plug 'jalvesaq/Nvim-R'

" No-BS Python code folding for Vim
Plug 'tmhedberg/SimpylFold'

" to view csv files nicely
Plug 'chrisbra/csv.vim'

" to get nice  tab autocompletion
Plug 'ervandew/supertab'

" more visable status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" for autoclosing of brackets etc.
Plug 'jiangmiao/auto-pairs'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Audoindent for python
Plug 'vim-scripts/indentpython.vim'

"To add pandoc functionality
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" For Python autocomplete
Plug 'Valloric/YouCompleteMe'

" Have vim check syntax on each save
Plug 'vim-syntastic/syntastic'

" PEP8 checking
Plug 'nvie/vim-flake8'

" Cool colour schemes
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'

" File tree explorer
Plug 'scrooloose/nerdtree'

" Super searching
Plug 'kien/ctrlp.vim'

" status/tabline for vim
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set splits upon opening vim
set splitbelow
set splitright

" window navigation
nremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

" Flag unnecessary whitespace (as red colour)
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" For PEP8 indentation re python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" so that working directory changes to that for file i've opened
set autochdir

" set airline theme
let g:airline_theme='simple'

" enable line numbers
set number

" use nice slate colorscheme
colorscheme slate

" set font type and size
set guifont=Menlo\ Regular:h13

" start R automatically when opening R or rmd files (if R isn't started already)
autocmd FileType r if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
autocmd FileType rmd if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif

" Set encoding as UTF8
set encoding = utf-8

" Customisations for Py autocomplete (ensures autocomplete window goes once done with it and shortcut for goto definition)
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Make code look pretty
let python_highlight_all=1
syntax on

" define when each colour scheme is used
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

"Switch between themes with F5
call togglebg#map("<F5>")

" Ignore .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

