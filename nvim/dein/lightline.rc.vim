let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
    \ 'active': {
    \   'left': [ [ 'mode', 'paste'  ],
    \             [ 'gitbranch', 'filename', 'currentfunction' ],
    \             [ 'cocstatus' ],
    \           ],
    \ },
    \ 'component_function': {
    \   'cocstatus': 'StatusDiagnostic',
    \   'currentfunction': 'CocCurrentFunction',
    \   'modified': 'LightlineModified',
    \   'readonly': 'LightlineReadonly',
"    \   'fugitive': 'LightlineFugitive',
"    \   'git_repo': 'LightlineGitRepo',
"    \   'git_status': 'LightlineGitStatus',
    \   'filename': 'LightlineFilename',
    \   'fileformat': 'LightlineFileformat',
    \   'filetype': 'LightlineFiletype',
    \   'fileencoding': 'LightlineFileencoding',
    \   'mode': 'LightlineMode',
    \   'gitbranch': 'gina#component#repo#branch',
    \ },
    \ }

function! CocCurrentFunction()
   return get(b:, 'coc_current_function', '')
endfunction

function! StatusDiagnostic() abort
 let info = get(b:, 'coc_diagnostic_info', {})
 if empty(info) | return '' | endif
 let msgs = []
 if get(info, 'error', 0)
   call add(msgs, 'E' . info['error'])
 endif
 if get(info, 'warning', 0)
   call add(msgs, 'W' . info['warning'])
 endif
 if get(info, 'information', 0)
   call add(msgs, 'I' . info['information'])
 endif
 if get(info, 'hint', 0)
   call add(msgs, 'H' . info['hint'])
 endif
 return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'vimshell' ? substitute(b:vimshell.current_dir,expand('~'),'~','') :
        \ '' != expand('%') ? expand('%') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction
"
"function! LightlineGitRepo()
"  return gina#component#repo#preset()
"endfunction
"
"function! LightlineGitStatus()
"  return gina#component#status#preset()
"endfunction
"
"function! LightlineFugitive()
"  if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
"    return fugitive#head()
"  else
"    return ''
"  endif
"endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
