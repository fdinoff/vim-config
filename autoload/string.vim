function! string#ConvertToUnderscore(string)
    return substitute(substitute(a:string, '^\u', '\L&', ''), '\u', '_\L&', 'g')
endfunction
