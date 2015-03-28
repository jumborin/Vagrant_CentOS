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

" Rails向けのコマンドを提供する
NeoBundle 'tpope/vim-rails'

" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'

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

call neobundle#end()

filetype plugin indent on

NeoBundleCheck