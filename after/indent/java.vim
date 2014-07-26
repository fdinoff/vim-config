" The default java indent expression does not correctly indent annotations.
" This should fix that.
"
" NOTE: This is not needed in later versions of vim but I haven't looked to
" see what version it was fixed in

" Save original_indent function just in case it was not GetJavaIndent()
let s:orginal_indent = function(strpart(&indentexpr, 0, len(&indentexpr) - 2))
function! GetJavaIndent_improved()
    let theIndent = s:orginal_indent()
    let lnum = prevnonblank(v:lnum - 1)
    let line = getline(lnum)
    if line =~ '^\s*@.*$'
        let theIndent = indent(lnum)
    endif

    return theIndent
endfunction
setlocal indentexpr=GetJavaIndent_improved()
