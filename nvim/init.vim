" for Python
let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'

""""" dein.vim settings
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let s:config_home = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
let s:dein_config_dir = s:config_home . '/nvim/dein'
let s:toml_file = s:dein_config_dir . '/dein.toml'
let s:toml_file_denite = s:dein_config_dir . '/dein_denite.toml'
let s:toml_file_coc = s:dein_config_dir . '/dein_coc.toml'
let s:toml_file_interface = s:dein_config_dir . '/dein_interface.toml'
let s:toml_lazy_file = s:dein_config_dir . '/dein_lazy.toml'
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#add(s:dein_repo_dir)

  " 起動時に読み込むプラグイン群
  call dein#load_toml(s:toml_file, {'lazy': 0})
  call dein#load_toml(s:toml_file_denite, {'lazy': 0})
  call dein#load_toml(s:toml_file_coc, {'lazy': 0})
  call dein#load_toml(s:toml_file_interface, {'lazy': 0})

  " 遅延読み込みしたいプラグイン群
  "call dein#load_toml(s:toml_lazy_file, {'lazy': 0})

  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
"""""" dein.vim settings

" オプションファイル
runtime! ./options.rc.vim
" キーマップファイル
runtime! ./keymap.rc.vim
" ファンクションファイル
runtime! ./function.rc.vim

" 前回開いた時の最後のカーソルで開く
augroup vimrcEx
    au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
      \ exe "normal g`\"" | endif
augroup END
