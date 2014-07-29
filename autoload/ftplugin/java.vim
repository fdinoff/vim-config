function! ftplugin#java#JavaStaticImport(...)
    if a:0
        let l:name = a:1
    else
        let l:name = expand('<cword>')
    endif

    let l:winview = winsaveview()
    let l:imports = systemlist('find-static-import.sh ' . l:name)
    if len(l:imports)
        if len(l:imports) == 1
            let l:choice = l:imports[0]
        elseif len(l:imports) > 1
            let l:choice = eclim#java#import#ImportPrompt(l:imports)
        endif
        call append(2, l:choice)
        call SortStaticImports()
    else
        echoerr 'No import for' l:name 'found'
    endif
    call winrestview(l:winview)
endfunction

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
