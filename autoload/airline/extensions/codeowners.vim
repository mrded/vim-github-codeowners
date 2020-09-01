scriptencoding utf-8

" Avoid installing twice
if exists('g:loaded_vim_airline_codeowners')
  finish
endif

let g:loaded_vim_airline_codeowners = 1

let s:codeowners_cache = {}

function! airline#extensions#codeowners#init(ext)
  call airline#parts#define_raw('codeowners', '%{airline#extensions#codeowners#who()}')
endfunction

function! airline#extensions#codeowners#who()
  let l:file = bufname()

  if !has_key(s:codeowners_cache, l:file)
    " @TODO: locad from ../../../node_modules/.bin/github-codeowners
    let l:output = system("github-codeowners who " . l:file)
    let s:codeowners_cache[l:file] = split(l:output)[-1]
  endif

  return s:codeowners_cache[l:file]
endfunction
