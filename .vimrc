if has('mac')
  let g:vimproc_dll_path = '~/.vim/bundle/vimproc/lib/vimproc_mac.so'
endif

call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-haml'
Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'fatih/vim-go'
Plug 'Yggdroot/indentLine'
Plug 'posva/vim-vue'
Plug 'davidhalter/jedi-vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'Townk/vim-autoclose'
Plug 'elzr/vim-json'

call plug#end()

" -------------------
" 色の設定
" -------------------
highlight LineNr ctermfg=darkyellow
highlight NonText ctermfg=darkgrey
highlight Folded ctermfg=blue
highlight SpecialKey cterm=underline ctermfg=darkgrey

" 全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

" タブ幅
set ts=2 sw=2
set tabstop=2
set shiftwidth=2
set expandtab

" -------------------
" バッファ関連
" -------------------
set hidden           " 切り替え時のundoの効果持続等
" -------------------
" その他
" -------------------
set notitle
set number
set list
set listchars=tab:>\
set laststatus=2
set statusline=[%L]\ %t\ %y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%r%m%=%c:%l/%L
set clipboard=unnamed,autoselect
set iskeyword+=:
set backspace=2
set ambiwidth=double
set nocompatible
autocmd TextYankPost * call system("tmux load-buffer -", v:event.regcontents)

" for ruby
syntax on
filetype plugin indent on
compiler ruby

let ruby_space_errors=1
au BufRead,BufNewFile *.erb set filetype=eruby
au BufRead,BufNewFile *.yml set filetype=yaml
au FileType ruby set ts=2 sw=2 softtabstop=2 expandtab
au FileType javascript set ts=2 sw=2 softtabstop=2 expandtab
au FileType html set ts=2 sw=2 softtabstop=2 expandtab
au FileType eruby set ts=2 sw=2 softtabstop=2 expandtab
au FileType yaml set ts=2 sw=2 softtabstop=2 expandtab
autocmd FileType ruby map :W<CR> :w<CR>:!ruby -c %<CR>

au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
au BufRead,BufNewFile *.sass set filetype=scss.css
au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et
autocmd FileType scss.css setlocal sw=2 sts=2 ts=2 et

augroup rbsyntaxcheck
  autocmd!
    autocmd BufWrite *.rb w !ruby -c
augroup END

let g:vim_json_syntax_conceal = 0
