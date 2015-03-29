set runtimepath+=~/.vim/bundle/neobundle.vim/
set laststatus=2
set number
set showmatch
set ruler
set autoread
set title
set wildmenu
set hlsearch
set showcmd
set hidden
set expandtab
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
syntax on
highlight LineNr ctermfg=red


call neobundle#begin(expand('~/.vim/bundle/'))


"NeoBundle自体
NeoBundleFetch 'Shougo/neobundle.vim'

"
NeoBundle 'Townk/vim-autoclose'

"HTML
NeoBundle 'mattn/emmet-vim'

" シンタックスチェック
NeoBundle 'scrooloose/syntastic'

  let g:syntastic_javascript_checker = "jshint"

" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'

" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'

" ログファイルを色づけしてくれる
NeoBundle 'vim-scripts/AnsiEsc.vim'

  " vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
  let g:indent_guides_enable_on_vim_startup = 1

" 行末の半角スペースを可視化
NeoBundle 'bronson/vim-trailing-whitespace'


" 以下言語別プラグイン
" Ruby
" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'

" Rails向けのコマンドを提供する
NeoBundle 'tpope/vim-rails'


" JavaScript
" JavaScript BDDツール
NeoBundle 'claco/jasmine.vim'


" CoffeeScript
" syntax + 自動compile
Bundle 'kchmck/vim-coffee-script'

  " vimにcoffeeファイルタイプを認識させる
  au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
  " インデント設定
  autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et
  "エラーがあったら別ウィンドウで表示
  autocmd QuickFixCmdPost * nested cwindow | redraw! 
  " Ctrl-cで右ウィンドウにコンパイル結果を一時表示する
  nnoremap <silent> <C-C> :CoffeeCompile vert <CR><C-w>h

" Scala
NeoBundle 'scala/scala-tool-support'
NeoBundle 'derekwyatt/vim-scala'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck