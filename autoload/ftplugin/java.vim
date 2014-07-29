function! ftplugin#java#SortStaticImports()
    let l:winview = winsaveview()
    call cursor(0,0)
    call search('\C\v^import static', '')
    let l:blank_line_num = search('^$', 'n')
    let l:regular_import = search('\C\v^import %(static)@!', 'n')
    if l:blank_line_num > l:regular_import
        call append(l:regular_import - 1, '')
    endif
    0/\C\v^import static/;/^$/-1 sort u
    call winrestview(l:winview)
endfunction

function! ftplugin#java#CorrectJavaImport()
    if expand('<cword>')[0] =~# '^[a-z]$'
        JavaStaticImport
    else
        JavaImport
    endif
endfunction

function! ftplugin#java#JavaGetTestFilename()
    let l:filename = expand('%:p')
    let l:filename = substitute(
                \ l:filename,
                \ '\C\v<java%(tests)?>',
                \ "\\={'java':'javatests', 'javatests':'java'}[submatch(0)]",
                \ '')
    let l:filename = substitute(
                \ l:filename,
                \ '\C\v(%(Test)?\ze\.)java$',
                \ "\\={'Test.':'', '.':'Test'}[submatch(1)]",
                \ '')
    return l:filename
endfunction
