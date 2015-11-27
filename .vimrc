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

inoremap jk <esc>  " type j and k consecutively to escape (into normal mode)
map Y y$           " make Y yank like D deletes
