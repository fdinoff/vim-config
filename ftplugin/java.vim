nnoremap <F3> :call CompileJavac()<CR>
function! CompileJavac()
    exec "w"
    exec "!javac %"
endfunction

nnoremap <F4> :call CompileRunJavac()<CR>
function! CompileRunJavac()
    exec "w"
    exec "!javac % && java %<"
endfunction

iabbrev <buffer> sop System.out.println
iabbrev <buffer> sof System.out.printf
iabbrev <buffer> psvm public static void main(String[] args) {<CR><CR>}<UP><ESC>$

iabbrev <buffer> pritnln println

"map <F7> <Plug>JavagetsetInsertBothGetterSetterj

"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"let g:SuperTabDefaultCompletionType = "<C-X><C-]>"
"let g:SuperTabDefaultCompletionType = "<C-X><C-u>"
"let g:SuperTabDefaultCompletionType = "context"
"set tags=$HOME/.vim/.tags
"setlocal omnifunc=javacomplete#Complete
"setlocal completefunc=javacomplete#CompleteParamsInfo
