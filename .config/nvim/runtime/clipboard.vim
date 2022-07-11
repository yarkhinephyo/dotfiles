if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    "" Mac clipboard 
    let g:clipboard = {
      \ 'name': 'pbcopy',
      \ 'copy': {
      \    '+': 'pbcopy',
      \    '*': 'pbcopy',
      \ },
      \ 'paste': {
      \    '+': 'pbpaste',
      \    '*': 'pbpaste',
      \ },
      \ 'cache_enabled': 0,
    \ }
  else
    let s:clip = '/mnt/c/Windows/System32/clip.exe'
    if executable(s:clip)
      "" WSL clipboard
      augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
      augroup END
    else
      ""
      "" No system clipboard integration on remote server
      ""
    endif
  endif
endif

