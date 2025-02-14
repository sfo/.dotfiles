""""""""""""""""""""""""""""""""""
""" START VUNDLE CONFIGURATION """
""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" status line
Plugin 'itchyny/lightline.vim'

" CSV plugin
Plugin 'chrisbra/csv.vim'

" NERDTree file browser
Plugin 'preservim/nerdtree'

Plugin 'ryanoasis/vim-devicons'

""" movement and selection plugins
" add indentation objects to select identically indendet blocks of code
Plugin 'michaeljsmith/vim-indent-object'
" add movement operators to select surrounding braces, tags, ticks, etc.
Plugin 'tpope/vim-surround'

""" Style Plugins
Plugin 'lifepillar/vim-solarized8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


""""""""""""""""""""""""""""""""""
""" START OF VIM CONFIGURATION """
""""""""""""""""""""""""""""""""""
set number relativenumber
set ruler  " show cursor position
set expandtab  " convert tabs to spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set smartindent
set splitbelow  " when splitting windows, create new ones below current one
set vb  " make screen flash as visible bell
set laststatus=2 " Always display status line
set cursorline
set hlsearch
set encoding=UTF-8
filetype plugin on
syntax on

" Block modification for readonly files
" Source: https://vi.stackexchange.com/a/10248
autocmd BufRead * let &l:modifiable = !&readonly

" show all white space characters as visible characters
" enable with :set list
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣


""""""""""""""""""""""""""""""""""""""""""
""" START OF COLORSCHEME CONFIGURATION """
""""""""""""""""""""""""""""""""""""""""""
let g:solarized_termtrans=1
set background=light
colorscheme solarized8


"""""""""""""""""""""""""""""""
""" LIGHTLINE CONFIGURATION """
"""""""""""""""""""""""""""""""
let g:lightline = {
	\ 'colorscheme': 'solarized',
	\ 'active': {
	\   'left': [ 
	\	  ['mode', 'paste'],
	\	  ['bufnum'],
	\	  ['relativepath', 'readonly', 'modified' ],
	\	],
	\	'right': [
	\	  ['percent'],
	\	  ['lineinfo'],
	\	  ['fileformat','fileencoding', 'filetype'],
	\	  ['gutentags'],
	\	],
	\ },
	\ 'component_function': {
	\	'gutentags': 'gutentags#statusline',
	\ },
	\}


""""""""""""""""""""""""""""""""
""" START OF CUSTOM COMMANDS """
""""""""""""""""""""""""""""""""

" source: https://vi.stackexchange.com/a/16908/23614
command Fmtjson %!python -m json.tool

" source: https://stackoverflow.com/a/21439513/579698 (comment by @hakunami)
command Fmtxml %!xmllint --format -

" source: https://vi.stackexchange.com/a/2234/23614
command Tohex %!xxd

