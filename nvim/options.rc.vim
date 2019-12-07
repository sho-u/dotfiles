set termguicolors
set t_Co=256 
set background=dark
colorscheme gruvbox

set ff=unix
set mouse=
set number
set relativenumber
" set encoding=utf-8

" 5行余裕を持たせる
:set scrolloff=5
" ファイルを開くときの保管設定
set wildignorecase
set wildmode=list:longest

" カーソル行を強調表示しない
"set nocursorline
" 挿入モードの時のみ、カーソル行をハイライトする
"autocmd InsertEnter,InsertLeave * set cursorline!
" カレント行ハイライトON
" set cursorline
" アンダーラインを引く(color terminal)
"highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
set laststatus=2

"set list
set virtualedit+=block
set hidden

" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab
set tabstop=4
set shiftwidth=4

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

"markdown
let g:vim_markdown_folding_disabled = 1

"show quites of json
set conceallevel=0

if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "ファイルタイプに合わせたインデントを利用
  filetype indent on
  "sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtabの略
  autocmd FileType php         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType js          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scss        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sass        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript  setlocal sw=2 sts=2 ts=2 et
endif
