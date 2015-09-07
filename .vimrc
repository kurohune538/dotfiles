syntax on`
set background=dark
if ($ft=='ruby')
		colorscheme Tomorrow-Night
else
		colorscheme hybrid
endif

let g:hybrid_use_iTerm_colors = 1

" 行番号の色を設定
hi LineNr ctermbg=0 ctermfg=0
hi CursorLineNr ctermbg=4 ctermfg=0
set cursorline
hi clear CursorLine

"show line numbers
set number
set ruler

"about indents
set autoindent
set smartindent
"show 2bytespace"
augroup highlightIdegraphicSpace
  autocmd!
 	autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

"about tabs
set tabstop=2
set shiftwidth=4
set noexpandtab
set softtabstop=0

set encoding=utf-8

"NEOBundle
"Hit this command
"curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

if has('vim_starting')
  set nocompatible               " Be iMproved
   
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
	    
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
			 
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/unite.vim'
"color theme"
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/vim-tomorrow-theme'

call neobundle#end()

" Required:
filetype plugin indent on
				  
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

autocmd vimenter * NERDTree
