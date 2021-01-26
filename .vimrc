" appearence
syntax on
colorscheme sublimemonokai

" filetypes
filetype plugin on
filetype indent on

" search
set autoread
set ignorecase
set hlsearch
set incsearch

" tabbing
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" spellchecking
map <leader>ss :setlocal spell!<cr>

" other
set mouse=r

" yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
