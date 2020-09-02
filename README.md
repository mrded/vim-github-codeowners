# vim-github-codeowners
A vim plugin for interacting with GitHub's CODEOWNERS file.

## Requirements

- [github-codeowners](https://github.com/jjmschofield/github-codeowners)

## Installation
- Install github-codeowners: `npm i -g github-codeowners`
- Install `vim-github-codeowners` as any other plugin through the use of
[vim-plug](https://github.com/junegunn/vim-plug),
[Vundle](https://github.com/VundleVim/Vundle.vim),
[pathogen](https://github.com/tpope/vim-pathogen)
or your favourite vim plugin manager.

## Airline Configuration

![vim airline codeowners screenshot](https://user-images.githubusercontent.com/347098/91915409-63262700-ecb2-11ea-8502-52f820e22c75.png)

To show a codeowner in an [vim-airline](https://github.com/bling/vim-airline) section:

```vim
function! AirlineInit()
  let g:airline_section_z = airline#section#create(['codeowners'])
endfunction

autocmd User AirlineAfterInit call AirlineInit()
```

## TODO

- [ ] Automaticaly install npm dependency
- [ ] Add commands
