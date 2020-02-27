set nocompatible
filetype off
colorscheme default

set encoding=utf-8
scriptencoding utf-8

" tab
" set expandtab
" set shiftwidth=2
" set tabstop=2
"
" " indent
" set autoindent
"
" " high light
" nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
" set cursorline
"
" " Display line number 
" set number
"
" " enable backspace key
" set backspace=indent,eol,start
"
" " copy and paste
" if &term =~ "xterm"
"   let &t_SI .= "\e[?2004h"
"     let &t_EI .= "\e[?2004l"
"       let &pastetoggle = "\e[201~"
"
"         function XTermPasteBegin(ret)
"             set paste
"                 return a:ret
"                   endfunction
"
"                     inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

" Vundle
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
"
" Plugin 'VundleVim/Vundle.vim'
"
" " 導入したいプラグインを以下に列挙
" " Plugin '[Github Author]/[Github repo]' の形式で記入
" Plugin 'airblade/vim-gitgutter'
" Plugin 'nathanaelkane/vim-indent-guides'
"
" call vundle#end()
"
" filetype plugin indent on
"
"
" " Plugin 'nathanaelkane/vim-indent-guides'
" " 起動時点から有効にする
" let g:indent_guides_enable_on_vim_startup = 1
" " ハイライトの色を鮮やかにする
" let g:indent_guides_color_change_percent =  6
" " ハイライトの幅を狭める
" let g:indent_guides_guide_size = 2 
"
" " 色値設定
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626
" ctermbg=gray
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c
" ctermbg=darkgray
"
" let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
"
