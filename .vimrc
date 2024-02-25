" Auto-install plug.vim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()
Plug 'junegunn/vader.vim'
call plug#end()

" Exercism easy testing
function! s:exercism_tests()
  if expand('%:e') == 'vim'
    let testfile = printf('%s/%s.vader', expand('%:p:h'),
          \ tr(expand('%:p:h:t'), '-', '_'))
    if !filereadable(testfile)
      echoerr 'File does not exist: '. testfile
      return
    endif
    source %
    execute 'Vader' testfile
  else
    let sourcefile = printf('%s/%s.vim', expand('%:p:h'),
          \ tr(expand('%:p:h:t'), '-', '_'))
    if !filereadable(sourcefile)
      echoerr 'File does not exist: '. sourcefile
      return
    endif
    execute 'source' sourcefile
    Vader
  endif
endfunction

autocmd BufRead *.{vader,vim}
      \ command! -buffer Test call s:exercism_tests()

" Normal configuration settings
autocmd FileType * set formatoptions-=ro
syntax enable

" colors
"-------
try
  colorscheme torte    " normal
  "colorscheme evening  " presentation
  "colorscheme blue     " powershell
  "colorscheme pablo    " possibly better powershell/poshgit color
catch
endtry

" settings
"---------
set nowrap         " turn off wrapping
set number         " show line numbers
set laststatus=2   " always show status line

set expandtab      " tabs == spaces
set smarttab       " backspace shiftwidth on tabs (and other smart things)
set shiftwidth=2   " length of a shift (>> and << in normal mode)
set tabstop=8      " length of a tab
set softtabstop=8  " length of a tab in insert mode
set splitbelow     " open splits below the current
set splitright     " open vsplits to right of current

set ai  " auto indent  (keeps consecutive lines on same indent level)
set si  " smart indent (indents another level on new code blocks e.g. after '{')

set ignorecase " ignore case when using all lower case
set smartcase  " do not ingnore case when using mixed case

" File types with four space indention instead of two
autocmd FileType cs     setlocal shiftwidth=4
autocmd FileType fsharp setlocal shiftwidth=4
autocmd FileType ps1    setlocal shiftwidth=4
autocmd FileType rust   setlocal shiftwidth=4
autocmd FileType sql    setlocal shiftwidth=4
autocmd FileType java   setlocal shiftwidth=4

"----------------------------------------------------------
" Key Mappings
"----------------------------------------------------------

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

" quit document with leader (do not force in case there are unsaved changes)
map <leader>q :q<cr>

" remap common Ctrl-key combos
"-----------------------------
map <leader>r <C-r>

map <leader>u <C-u>
map <leader>d <C-d>

map <leader>f <C-f>
map <leader>b <C-b>

map <leader>o <C-o>
map <leader>i <C-i>

" moving between windows
"-----------------------
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>h <C-W>h
map <leader>l <C-W>l
