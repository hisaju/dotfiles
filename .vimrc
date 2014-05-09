" -------------------
" 色の設定
" -------------------
syntax on

highlight LineNr ctermfg=darkyellow    " 行番号
highlight NonText ctermfg=darkgrey
highlight Folded ctermfg=blue
highlight SpecialKey cterm=underline ctermfg=darkgrey
"highlight SpecialKey ctermfg=grey " 特殊記号

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

let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" Opsplorer
let s:split_width = 32

set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
    call neobundle#rc(expand('~/dotfiles/.vim/bundle/'))
endif

call neobundle#begin(expand('~/dotfiles/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'

call neobundle#end()

filetype plugin indent on




" for perl
set iskeyword+=:
filetype plugin on

map ,ptv <Esc>:'<,'>! perltidy<CR>
map ,pt <Esc>:%! perltidy<CR>

map ,js <Esc>:%! fixjsstyle<CR>

let g:user_zen_expandabbr_key = '<c-z>'

set ambiwidth=double

map ,ct <Esc>:%! csstidy - --silent=true<CR>

" for ruby
set nocompatible

syntax on
filetype on
filetype indent on
filetype plugin on

compiler ruby
let ruby_space_errors=1
au BufRead,BufNewFile *.erb set filetype=eruby
au FileType ruby set ts=2 sw=2 softtabstop=2 expandtab
au FileType javascript set ts=2 sw=2 softtabstop=2 expandtab
au FileType html set ts=2 sw=2 softtabstop=2 expandtab
au FileType eruby set ts=2 sw=2 softtabstop=2 expandtab
autocmd FileType ruby map :W<CR> :w<CR>:!ruby -c %<CR>
map ,rb <Esc>:%! rbeautify.rb - <CR>

au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et

augroup rbsyntaxcheck
  autocmd!
    autocmd BufWrite *.rb w !ruby -c
augroup END
