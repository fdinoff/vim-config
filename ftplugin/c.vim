nnoremap <F3> :call CompileGcc()<CR>
function! CompileGcc()
    exec "w"
    "exec /"!gcc % -o %<.out" remove /
    exec "!gcc %"
endfunction

nnoremap <F4> :call CompileRunGcc()<CR>
function! CompileRunGcc()
    exec "w"
    exec "!gcc % && ./a.out"
    "exec /"! ./%<.out"
endfunction
