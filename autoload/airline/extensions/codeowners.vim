scriptencoding utf-8

" Avoid installing twice
if exists('g:loaded_vim_airline_codeowners')
  finish
endif

let g:loaded_vim_airline_codeowners = 1

function! airline#extensions#codeowners#init(ext)
  call airline#parts#define_raw('codeowners', '%{codeowners#whoBufname()}')
endfunction
