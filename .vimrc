set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'tpope/vim-fugitive' " Git wrapper
 Plugin 'flazz/vim-colorschemes'
 Plugin 'editorconfig/editorconfig-vim'
 Plugin 'ervandew/supertab' "Auto completes with <tab>
 Plugin 'scrooloose/syntastic'
" " All of your Plugins must be added before the following line
 call vundle#end()         " required
 filetype plugin indent on " required
" " Put your non-Plugin stuff after this line
 set number
 set mouse=a
 set encoding=utf-8
 set autoindent
"
 syntax on
 set autoindent tabstop=4 shiftwidth=4
 set noexpandtab " Tab
 set cursorline " Highlights current line
" " Sets default register to system clipboard
 set clipboard=unnamedplus " requires vim-gnome or vim-gtk to enable
" clipboard
" " Auto closes brackets
 imap {<CR> {<CR>}<left><CR><up><Tab>
"
 set t_Co=256
 colorscheme molokai
 let g:airline_powerline_fonts = 1
 set laststatus=2 " Show airline
 let g:airline_theme = 'murmur'
 let g:airline#extensions#tabline#enabled = 1 " Enables airline tabline
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 1

