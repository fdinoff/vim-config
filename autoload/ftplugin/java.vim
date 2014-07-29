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
