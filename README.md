# vim-airline-codeowners
Shows codeowners in vim-airline

![vim airline codeowners screenshot](https://user-images.githubusercontent.com/347098/91915409-63262700-ecb2-11ea-8502-52f820e22c75.png)


## Requirements

- [vim-airline](https://github.com/bling/vim-airline)
- [github-codeowners](https://github.com/jjmschofield/github-codeowners)

## Installation
- Install github-codeowners: `npm i -g github-codeowners`
- Install `vim-airline-codeowners` as any other plugin through the use of
[vim-plug](https://github.com/junegunn/vim-plug),
[Vundle](https://github.com/VundleVim/Vundle.vim),
[pathogen](https://github.com/tpope/vim-pathogen)
or your favourite vim plugin manager.

## Configuration

To show a codeowner in an airline section:

```vim
function! AirlineInit()
  let g:airline_section_z = airline#section#create(['codeowners'])
endfunction

autocmd User AirlineAfterInit call AirlineInit()
```

## TODO

- [ ] Automaticaly install npm dependency
- [ ] Do nothing if there is no codeowners file
