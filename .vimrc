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


"NeoBundle����
NeoBundleFetch 'Shougo/neobundle.vim'

"
NeoBundle 'Townk/vim-autoclose'

"HTML
NeoBundle 'mattn/emmet-vim'

" �V���^�b�N�X�`�F�b�N
NeoBundle 'scrooloose/syntastic'

" Rails�����̃R�}���h��񋟂���
NeoBundle 'tpope/vim-rails'

" Ruby������end�������}�����Ă����
NeoBundle 'tpope/vim-endwise'

" �R�����gON/OFF����y�Ɏ��s
NeoBundle 'tomtom/tcomment_vim'

" �C���f���g�ɐF��t���Č��₷������
NeoBundle 'nathanaelkane/vim-indent-guides'

" ���O�t�@�C����F�Â����Ă����
NeoBundle 'vim-scripts/AnsiEsc.vim'

  " vim�𗧂��グ���Ƃ��ɁA�����I��vim-indent-guides���I���ɂ���
  let g:indent_guides_enable_on_vim_startup = 1

" �s���̔��p�X�y�[�X������
NeoBundle 'bronson/vim-trailing-whitespace'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck