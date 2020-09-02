scriptencoding utf-8

let s:cache = {}

function! codeowners#who(file)
  " If codeowners file doesn't exist - ignore.
  if !filereadable(fnamemodify('.github/CODEOWNERS', ':p'))
    let s:cache[a:file] = "Unloved"
  endif

  " Populate cache if miss.
  if !has_key(s:cache, a:file)
    " @TODO: locad from ../../../node_modules/.bin/github-codeowners
    let l:output = system("github-codeowners who " . a:file)
    let s:cache[a:file] = get(split(l:output), 1, "Unloved") 
  endif

  return s:cache[a:file]
endfunction
