scriptencoding utf-8

" Avoid installing twice
if exists('g:loaded_vim_airline_codeowners')
  finish
endif

let g:loaded_vim_airline_codeowners = 1

function! airline#extensions#codeowners#init(ext)
  call airline#parts#define_raw('codeowners', '%{airline#extensions#codeowners#who()}')
endfunction

function! airline#extensions#codeowners#who()
  " @TODO: locad from ../../../node_modules/.bin/github-codeowners
  let s:output = system("github-codeowners who " . bufname())

  return split(s:output)[-1]
endfunction
