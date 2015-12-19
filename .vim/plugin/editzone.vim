" Parameters related to the edition zone

if version < 703
  set number
else
  set relativenumber
  set colorcolumn=+1
endif

" Format the statusline
set laststatus=2
set statusline=%f\ %l\|%c\ %m%=%p%%\ (%Y%R)
set wildmenu
set hid
set noerrorbells
set novisualbell

set cursorline

set list
set listchars=tab:.\ ,eol:¬,nbsp:␣,extends:↲

set completeopt=menu,menuone,longest
set pumheight=15
