" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

call plug#begin('~/.config/nvim/plugged')

" Git wrapper for vim
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

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Audoindent for python
Plug 'vim-scripts/indentpython.vim'

"To add pandoc functionality
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Have vim check syntax on each save
Plug 'vim-syntastic/syntastic'

" PEP8 checking
Plug 'nvie/vim-flake8'

" Cool colour schemes
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'

" File tree explorer
Plug 'scrooloose/nerdtree'

" Plugin for making commenting/uncommenting files easier
Plug 'tpope/vim-commentary'

" Vim Markdown -  syntax highlighting, matching rules and mappings for markdown
" and extention
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

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

"folders
command Projects cd ~/Documents/Projects
command Scratch cd ~/Documents/Scratch
command Camq cd ~/Documents/Projects/MQ-CA/ca-megaquery

"change how to change what makes <- in R, press underscore twice to get it
let R_assign = 2

" allow r console to open in separate window
let R_in_buffer = 0

" Set splits upon opening vim
set splitbelow
set splitright

" window navigation
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Enable folding
set foldmethod=indent
set foldlevel=99

" Map ; to : to avoid mistaken caps when running vim commands
nnoremap ; :
vnoremap ; :

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

" start R automatically when opening R or rmd files (if R isn't started already)
" autocmd FileType r if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
" autocmd FileType rmd if string(g:SendCmdToR) == "function('SendCmdToR_fake')" | call StartR("R") | endif
" autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif

" Set colourscheme for vim
syntax enable
set background=dark
colorscheme zenburn

" Set different background colour depending on wether terminal or GUI mode
" if has('gui_running')
"   set background=dark
"   colorscheme solarized
" else
"   colorscheme zenburn
" endif

" Customisations for Py autocomplete (ensures autocomplete window goes once done with it and shortcut for goto definition)
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Make code look pretty
let python_highlight_all=1
syntax on

" Ignore .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Set up to detect document templates by file extension
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.R 0r ~/.config/nvim/templates/skeleton.R
    autocmd BufNewFile *.Rmd 0r ~/.config/nvim/templates/skeleton.Rmd
  augroup END
endif

