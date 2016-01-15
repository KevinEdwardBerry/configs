syntax enable

try
  colorscheme desert
catch
endtry

set nowrap  " turn off wrapping
set number  " show line numbers

set expandtab      " tabs == spaces
set smarttab       " backspace shiftwidth on tabs (and other smart things)
set shiftwidth=2   " length of a shift (>> and << in normal mode)
set tabstop=2      " length of a tab
set softtabstop=2  " length of a tab in insert mode

set ai  " auto indent  (keeps consecutive lines on same indent level)
set si  " smart indent (indents another level on new code blocks e.g. after '{' )

set ignorecase " ignore case when using all lower case
set smartcase  " do not ingnore case when using mixed case

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set <leader> to space bar
let mapleader="\<space>"

" type j and k consecutively to escape (to normal mode from insert mode)
inoremap jk <esc>

" invoke any changes to this .vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

" make Y yank like D deletes
map Y y$

" save with only two keys
map <leader>w :w!<cr>

" remap common Ctrl-key combos
map <leader>r <C-r>
map <leader>u <C-u>
map <leader>d <C-d>
map <leader>o <C-o>
map <leader>i <C-i>

" moving between windows
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>h <C-W>h
map <leader>l <C-W>l
