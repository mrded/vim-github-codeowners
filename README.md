# vim-airline-codeowners
Shows codeowners in vim-airline

## TODO:
- To get a codeowner: https://github.com/jjmschofield/github-codeowners
- Airline extensions example: https://github.com/enricobacis/vim-airline-clock
- Airline docs: https://github.com/vim-airline/vim-airline/blob/master/doc/airline.txt

## Requirements

* [vim-airline](https://github.com/bling/vim-airline): This extension is
  based on vim-airline (like vim-powerline but faster)

## Installation

Install `vim-airline-codeowners` as any other plugin through the use of
[vim-plug](https://github.com/junegunn/vim-plug),
[Vundle](https://github.com/VundleVim/Vundle.vim),
[pathogen](https://github.com/tpope/vim-pathogen)
or your favourite vim plugin manager. The plugin is enabled by default.

## Configuration

If you want to a codeowner to an airline section

```vim
function! AirlineInit()
  let g:airline_section_z = airline#section#create(['codeownersWho', g:airline_symbols.space, g:airline_section_z])
endfunction

autocmd User AirlineAfterInit call AirlineInit()
```
