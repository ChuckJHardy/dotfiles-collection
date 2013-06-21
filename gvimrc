if has("gui_running")
    macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>
    set fuoptions=maxhorz,maxvert
    set guioptions-=T
    set guioptions-=l
    set guioptions-=e
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    set guioptions-=m
    set guifont=Monaco:h12
    set guitablabel=%M\ %t
    set t_Co=256
endif
