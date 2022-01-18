" ~/.vimrc

set nocompatible
filetype plugin indent on

let mapleader=" "

function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('whatyouhide/vim-gotham')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('preservim/nerdtree')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-commentary')

endfunction

command! PackUpdate call PackInit() | call minpac#update()
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()

let g:airline_theme='gotham'
nnoremap <leader>t :NERDTreeToggle<CR>

" TAG JUMPING
command! MakeTags !ctags -R .

set encoding=UTF-8
set path+=**
set wildmenu
set number
set hlsearch
set incsearch
set mouse=a
set backspace=indent,eol,start
syntax on
set termguicolors
colorscheme gotham
