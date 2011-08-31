" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch on search pattern highlighting.
  set hlsearch

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

endif

" Visual prefrences
set shortmess+=I	" no message
colorscheme camo	" nice colorscheme
syntax on		" enable syntax highlighting
set number

" keyboard preferences
" shift+enter instead of escape
map  <Esc>
map!  <Esc> 

map ;t  :CommandT<CR>
map ;c  :bdelete<CR>

map ;j  :wincmd j<CR>
map ;k  :wincmd k<CR> 

