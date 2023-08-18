# Miscellaneous Vim Notes

These are mostly related to Vim movements – for editing, I mainly use Neovim.

## Current File Name

Insert current file name into the file (in insert mode):

```vim
⌃r %
```

## System Clipboard

- `"*y` – yank selection to system clipboard
- `"*p` – paste from system clipboard

## .vimrc

A few things to include in the `.vimrc` file.

```vim
" show relative line numbers except for current row
set number relativenumber

" highlight cursor line
set cursorline

" do not scroll to the top/bottom of the screen
set scrolloff=10

" show current mode on bottom line
set showmode

" case-insensitive search unless mixed case in the search string
set ignorecase
set smartcase

" enable file type detection & syntax highlighting
filetype on
syntax on

" save a bit more of the command history
set history=1000
```
