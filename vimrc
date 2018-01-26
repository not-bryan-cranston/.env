" basic settings
""""""""""""""""
set nocompatible                       " enable non-vi modern features
set clipboard=unnamedplus              " use system clipboard
set wildmenu                           " enhanced cli completion
set autoread                           " automatically read external changes

" appearance
""""""""""""""""
set laststatus=2                       " always show status bar
set ruler                              " show cursor line/col values
set number                             " show line numbers
set colorcolumn=80                     " show 80 char col limit

set scrolloff=1                        " show next 1 line when scrolling
set sidescrolloff=5                    " show next 5 cols when scrolling
set display=lastline                   " show truncated line instead of @
set display+=uhex                      " show unprintable ascii as hex

" searching
""""""""""""""""
set incsearch                          " on the fly searching

if maparg('<C-L', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>has('diff')?'<Bar>diffupdate'"''<CR><CR><C-L>
endif                                  " use <C-L> to clear hl

" history
""""""""""""""""
set viminfo='25,\"100,:20,%,n~/.vim/.viminfo
" remember last position in file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" syntax
""""""""""""""""
filetype plugin indent on              " enable file type based indenting
syntax on                              " enable file type based syntax hl
