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

if &diff
    colorscheme evening
else
    colorscheme elflord
endif
