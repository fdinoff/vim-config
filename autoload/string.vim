function! string#ConvertToUnderscore(string)
    return substitute(substitute(a:string, '^\u', '\L&', ''), '\u', '_\L&', 'g')
endfunction

function! string#ConvertToCamelCase(string)
    return substitute(tolower(a:string), '_\(\a\)', '\U\1' , 'g')
endfunction
