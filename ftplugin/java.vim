map <F3> :call CompileJavac()<CR>
func! CompileJavac()
    exec "w"
    exec "!javac %"
endfunc

map <F4> :call CompileRunJavac()<CR>
func! CompileRunJavac()
    exec "w"
    exec "!javac % && java %<"
endfunc

iabbrev sop System.out.println
iabbrev sof System.out.printf
iabbrev psvm public static void main(String[] args){<CR><CR>}<UP><ESC>$

iabbrev pritnln println

"autocmd FileType java map <F7> <Plug>JavagetsetInsertBothGetterSetterj

"autocmd FileType java let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
autocmd FileType java let g:SuperTabDefaultCompletionType = "<C-X><C-]>"
"autocmd FileType java let g:SuperTabDefaultCompletionType = "<C-X><C-u>"
"autocmd FileType java let g:SuperTabDefaultCompletionType = "context"
"autocmd FileType java set tags=$HOME/.vim/.tags
"autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
