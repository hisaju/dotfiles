" -------------------
" 色の設定
" -------------------
syntax on

highlight LineNr ctermfg=darkyellow
highlight NonText ctermfg=darkgrey
highlight Folded ctermfg=blue
highlight SpecialKey cterm=underline ctermfg=darkgrey

" 全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

" タブ幅
set ts=4 sw=4
set softtabstop=4
set expandtab

" -------------------
" 日本語の設定
" -------------------
" 文字コードの自動認識
set encoding=utf-8
set fileencoding=utf-8
if &encoding !=# 'utf-8' 
  set encoding=japan
  set fileencoding=japan
endif

if &encoding !=# 'utf-8' 
  set encoding=japan
  set fileencoding=japan
endif

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
set listchars=tab:\ \ ,extends:<,trail:\ 
set laststatus=2
set statusline=[%L]\ %t\ %y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%r%m%=%c:%l/%L
set clipboard=unnamed,autoselect

let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" Opsplorer
let s:split_width = 32

set nocompatible
filetype plugin indent off

if has('mac')
  let g:vimproc_dll_path = '~/.vim/bundle/vimproc/autoload/vimproc_mac.so'
endif

if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle "pangloss/vim-javascript"
NeoBundle "mxw/vim-jsx"
NeoBundle 'JulesWang/css.vim'
NeoBundle 'cakebaker/scss-syntax.vim'
"NeoBundle 'scrooloose/syntastic'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

set iskeyword+=:
filetype plugin on
set backspace=2


" for ruby
set nocompatible

syntax on
filetype on
filetype indent on
filetype plugin on

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
autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et
autocmd FileType scss.css setlocal sw=2 sts=2 ts=2 et

augroup rbsyntaxcheck
  autocmd!
    autocmd BufWrite *.rb w !ruby -c
augroup END

set ambiwidth=double
