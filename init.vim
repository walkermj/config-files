" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
call plug#begin('~/.config/nvim/plugged')
" for snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Git wrapper for vim
Plug 'tpope/vim-fugitive'
" Rename file currently editing and keep on editing
Plug 'vim-scripts/rename2'
" to interact with R
Plug 'jalvesaq/Nvim-R'
" No-BS Python code folding for Vim
Plug 'tmhedberg/SimpylFold'
" for moving between tmux and vim a bit more seamlessly
Plug 'christoomey/vim-tmux-navigator'
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
" and extension
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Vim-Latex - rich set of features for editing latex files
Plug 'vim-latex/vim-latex'
" Vim-Eunuch 
Plug 'tpope/vim-eunuch'
" Goyo.vim distraction free writing in vim
Plug 'junegunn/goyo.vim'

" Initialize plugin system
call plug#end()
filetype plugin indent on    

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""" VIM BEHAVIOR """"""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" let maplocalleader="," " change the localleader from \ to ,
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set foldlevel=99
set conceallevel=2 "override plugin that is mysteriously changing this setting (see https://vi.stackexchange.com/a/7263)"
set foldmethod=indent " Enable folding
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
filetype plugin indent on    " allow to detect filetype and load corresponding plugins
set autochdir 	  " so that working directory changes to that for file i've opened
set cursorline    " highlight the current line
set linebreak     " to get 'soft linebreak' i.e. wrapping at word boundaries
syntax enable     " enable syntax highlighting
set splitbelow " Set splits upon opening vim
set splitright " Set splits upon opening vim
set clipboard=unnamed " copy and paste from vim to clipboard
" Use ESC to exit insert mode in :term
tnoremap <Esc> <C-\><C-n>  
" Map ; to : to avoid mistaken caps when running vim commands
nnoremap ; :
vnoremap ; :
" window navigation
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
" set airline theme
let g:airline_theme='simple'
" Set colourscheme for vim
syntax enable
set background=dark
colorscheme zenburn
" Ignore .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
nnoremap <Leader>b :ls<CR>:b<Space> 
" allows <Leader>b to accept the number of a buffer afterwards to select that buffer
nnoremap <Leader>nt :NERDTree<CR>
" remaps leader nt to opening up NERD tree
" UltiSnips Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger = "<C-l>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"



"""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" VIM FUNCTIONS
" function to see difference compared to last saved version
" call it with :DiffSaved and turn it off with :diffoff
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" customise Goyo so that move down line by line
function! s:goyo_enter()
  nnoremap j gj
  nnoremap k gk
endfunction

function! s:goyo_leave()
  nunmap j
  nunmap k
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"folder aliases
command Projects cd ~/Documents/Projects
command Scratch cd ~/Documents/Scratch
command Camq cd ~/Documents/Projects/MQ-CA/ca-megaquery
command Pmi cd ~/Documents/Projects/cdt-patient-master-index

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" VIM-R COMMANDS
"change how to change what makes <- in R, press underscore twice to get it
let R_assign = 0
"change the data viewer to be rdtv function in wrangleR
let R_df_viewer = "wrangleR::rdtv(%s)"
let R_assign_map = ";"  " get <- with a double-tap on semi-colon
"to show head of the df under cursor
nmap <silent> <LocalLeader>h :call RAction("head")<CR>
"to view with dtv whole of df under cursor
nmap <silent> <LocalLeader>dv :call RAction("wrangleR::dtv")<CR>
"to get glimpse of the df
nmap <silent> <LocalLeader>g :call RAction("dplyr::glimpse")<CR>
"to get number of rows in df
nmap <silent> <LocalLeader>nr :call RAction("nrow")<CR>
let R_rcomment_string = "#-- "          " change what gets added as a comment character
"enable folding but open unfolded
let r_syntax_folding = 1
set nofoldenable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" PYTHON SETUP AND COMMANDS
" For PEP8 indentation re python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    " \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Customisations for Py autocomplete (ensures autocomplete window goes once done with it and shortcut for goto definition)
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Make code look pretty
let python_highlight_all=1
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set up to detect document templates by file extension
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.R 0r ~/.config/nvim/templates/skeleton.R
    autocmd BufNewFile *.Rmd 0r ~/.config/nvim/templates/skeleton.Rmd
  augroup END
endif

"include some other functions
"to show head of the df under cursor
nmap <silent> <LocalLeader>h :call RAction("head")<CR>
"to view with dtv whole of df under cursor
nmap <silent> <LocalLeader>dv :call RAction("wrangleR::dtv")<CR>

" Get latex files to compile using 
let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf = 'xelatex --interaction=nonstopmode --shell-escape $*'

