""""キーマッピング
let mapleader = "\<Space>"
nnoremap <silent> <ESC><ESC> :noh<CR>
" 終了
nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>q :bd<CR>
"nnoremap <silent> <Leader>wq :wq<CR>
nnoremap <silent> <Leader>wq :w<CR>:bd<CR>
nnoremap <silent> <Leader>z ZZ<CR>

" Buffer
" nnoremap <silent> <Leader>n :bn<CR>
" nnoremap <silent> <Leader>p :bp<CR>
" nnoremap <silent> <Leader>f :bf<CR>
" nnoremap <silent> <Leader>l :bl<CR>
" Denite
nnoremap <Leader>r :Denite file/rec<CR>
nnoremap <Leader>o :Denite file/old file/rec<CR>
nnoremap <Leader>g :Denite grep<CR>
nnoremap <Leader>c :DeniteCursorWord grep<CR>
nnoremap <Leader>b :DeniteBufferDir file file:new<CR>
nnoremap <Leader>dd :Denite directory_mru directory_rec -default-action=cd<CR>
nnoremap <Leader>dr:Denite -resume<CR>
nnoremap <Leader>; :Denite buffer<CR>

" jjでエスケープ
inoremap <silent> jj <ESC>
inoremap <silent> ｊｊ <ESC>
tnoremap <silent> <ESC> <C-\><C-n>
tnoremap <silent> jj <C-\><C-n>
tnoremap <silent> ｊｊ   <C-\><C-n>
"#nnoremap ｊｊ jj 


" tyru/caw.vim
nmap <C-_> <Plug>(caw:hatpos:toggle)
vmap <C-_> <Plug>(caw:hatpos:toggle)

" easymotion
nmap <silent> <Leader>/ <Plug>(easymotion-iskeyword-bd-w)
nmap <silent> s <Plug>(easymotion-s2)
