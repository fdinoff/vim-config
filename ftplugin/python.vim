map <F3> :call RunPython()<CR>
func! RunPython()
    exec "w | pyfile %"
endfunc
