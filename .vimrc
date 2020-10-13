""""""""""""""""""""""""""""""""""
""" START VUNDLE CONFIGURATION """
""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" latex stuff
Plugin 'lervag/vimtex'

" tagging 
Plugin 'ludovicchabant/vim-gutentags'

" ultisnips
"" engine
Plugin 'SirVer/ultisnips'
"" snippets
Plugin 'honza/vim-snippets'

" status line
Plugin 'itchyny/lightline.vim'

""" Style Plugins
Plugin 'lifepillar/vim-solarized8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


""""""""""""""""""""""""""""""""""
""" START OF VIM CONFIGURATION """
""""""""""""""""""""""""""""""""""
set number
set ruler
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set laststatus=2 " Always display status line
set cursorline
set hlsearch
filetype plugin on
syntax on

" Block modification for readonly files
" Source: https://vi.stackexchange.com/a/10248
autocmd BufRead * let &l:modifiable = !&readonly


""""""""""""""""""""""""""""""""""""""""""
""" START OF COLORSCHEME CONFIGURATION """
""""""""""""""""""""""""""""""""""""""""""
let g:solarized_termtrans=1
set background=dark
colorscheme solarized8


"""""""""""""""""""""""""""""""""""""
""" START OF VIMTEX CONFIGURATION """
"""""""""""""""""""""""""""""""""""""
let g:tex_flavor = 'latex'


"""""""""""""""""""""""""""""""
""" ULTISNIPS CONFIGURATION """
"""""""""""""""""""""""""""""""

" change this to something else than <tab> if using YouCompleteMe
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


"""""""""""""""""""""""""""""""
""" GUTENTAGS CONFIGURATION """
"""""""""""""""""""""""""""""""
augroup MyGutentagsStatusLineRefresher
	autocmd!
	autocmd User GutentagsUpdating call lightline#update()
	autocmd User GutentagsUpdated call lightline#update()
augroup END


"""""""""""""""""""""""""""""""
""" LIGHTLINE CONFIGURATION """
"""""""""""""""""""""""""""""""
let g:lightline = {
	\ 'colorscheme': 'solarized',
	\ 'active': {
	\   'left': [ 
	\	  ['mode', 'paste'],
	\	  ['filename', 'readonly', 'modified' ],
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

