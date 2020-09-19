let mapleader=" "

" Clipboard
set clipboard+=unnamedplus

" --- Plugins ---
call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
call plug#end()

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Alias write  nd quit to Q
nnoremap <leader>q :wq!<CR>
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>g :Goyo<CR>
nnoremap <leader>p :filetpye detect<CR>

" Temp map
nnoremap <leader>p :filetype detect<CR>
" Automatically closing braces
inoremap { {}<ESC>ha

" Save file as sudo when no sudo permissions
cmap w!! w !sudo tee > /dev/null %

" Basic settings
  set mouse=a
  syntax on
  set ignorecase
  set smartcase
  set encoding=utf-8
  set number relativenumber
  colorscheme nord

  " Autocompletion
  set wildmode=longest,list,full

  " Fix splitting
  set splitbelow splitright

  " Goyo
  noremap <leader>g :Goyo<CR>

  " Skeleton File
  autocmd BufNewFile  *.cpp 0r ~/.config/nvim/template/skeleton.cpp
