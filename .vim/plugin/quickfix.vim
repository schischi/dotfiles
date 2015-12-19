" Set the maxHeight and the minHeight of the quickfix window
function! AdjustWindowHeight(minheight, maxheight)
    exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

" Close the quickfix window if it the last
function! MyLastWindow()
    if &buftype=="quickfix"
        if winbufnr(2) == -1
            quit!
        endif
    endif
endfunction

au FileType qf call AdjustWindowHeight(3, 10)
au BufEnter * call MyLastWindow()
