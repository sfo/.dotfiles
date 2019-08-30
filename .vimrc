set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set cursorline
set hlsearch
filetype plugin on
syntax on

" Block modification for readonly files
" Source: https://vi.stackexchange.com/a/10248
autocmd BufRead * let &l:modifiable = !&readonly

if &diff
    colorscheme evening
else
    colorscheme elflord
endif
