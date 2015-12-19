set pastetoggle=<F1>
map <F2> :set invrelativenumber<CR>
map <silent> <F3> :NERDTreeToggle<CR>
map <F5> :SyntasticCheck<CR>
map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

nnoremap ; :
vnoremap ; :

nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Right> :wincmd l<CR>

nnoremap <Tab> :s/\v
vnoremap <S-Tab> :s/\v

" Save file as root
cnoreabbrev w!! w !sudo tee % >/dev/null

if has("user_commands")
    command! -bang -nargs=? -complete=file E e<bang> <args>
    command! -bang -nargs=? -complete=file W w<bang> <args>
    command! -bang -nargs=? -complete=file Wq wq<bang> <args>
    command! -bang -nargs=? -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! -bang QA qa<bang>
    command! -bang Qa qa<bang>
endif

" Disable the arrow keys
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

nnoremap j gj
nnoremap k gk
