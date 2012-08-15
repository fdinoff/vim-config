set background=dark
hi clear

if !has("gui_running")
hi Normal         ctermbg=black guibg=black ctermfg=grey guifg=grey
hi Boolean        ctermbg=black guibg=black ctermfg=grey guifg=grey
hi Character      ctermbg=black guibg=black ctermfg=red guifg=red
hi Comment        ctermbg=black guibg=black ctermfg=darkgrey guifg=#606060 cterm=bold
hi Condtional     ctermbg=black guibg=black ctermfg=red guifg=red
hi Constant       ctermbg=black guibg=black ctermfg=red guifg=red
hi Cursor         ctermbg=black guibg=white ctermfg=grey guifg=grey
hi Debug          ctermbg=black guibg=black ctermfg=grey guifg=grey
hi Define         ctermbg=black guibg=black ctermfg=white guifg=white
hi Delimiter      ctermbg=black guibg=black ctermfg=grey guifg=grey
hi DiffAdd        ctermbg=NONE guibg=NONE ctermfg=NONE guifg=NONE cterm=NONE gui=NONE
hi DiffChange     ctermbg=white guibg=white ctermfg=darkgrey guifg=#606060
hi DiffDelete     ctermbg=black guibg=black ctermfg=darkgrey guifg=#606060 cterm=bold
hi DiffText       ctermbg=red guibg=red ctermfg=white guifg=white
hi Directory      ctermbg=black guibg=black ctermfg=white guifg=white
hi Error          ctermbg=red guibg=red ctermfg=white guifg=white
hi ErrorMsg       ctermbg=red guibg=red ctermfg=white guifg=white
hi Exception      ctermbg=black guibg=black ctermfg=grey guifg=grey
hi Float          ctermbg=black guibg=black ctermfg=red guifg=red cterm=NONE gui=NONE
hi FoldColumn     ctermbg=black guibg=black ctermfg=grey guifg=grey
hi Folded         ctermbg=black guibg=black ctermfg=red guifg=red
hi Function       ctermbg=black guibg=black ctermfg=white guifg=white
hi Identifier     ctermbg=black guibg=black ctermfg=grey guifg=grey
hi Include        ctermbg=black guibg=black ctermfg=white guifg=white
hi IncSearch      ctermbg=green guibg=green ctermfg=darkgrey guifg=#606060
hi Keyword        ctermbg=black guibg=black ctermfg=red guifg=red
hi Label          ctermbg=black guibg=black ctermfg=white guifg=white
hi LineNr         ctermbg=black guibg=black ctermfg=darkgrey guifg=#606060 cterm=bold
hi Macro          ctermbg=black guibg=black ctermfg=grey guifg=grey
hi ModeMsg        ctermbg=black guibg=black ctermfg=grey guifg=grey
hi MoreMsg        ctermbg=black guibg=black ctermfg=grey guifg=grey
hi NonText        ctermbg=black guibg=black ctermfg=darkgrey guifg=#606060 cterm=bold
hi Number         ctermbg=black guibg=black ctermfg=red guifg=red cterm=NONE gui=NONE
hi Operator       ctermbg=black guibg=black ctermfg=white guifg=white
hi PreCondit      ctermbg=black guibg=black ctermfg=white guifg=white
hi PreProc        ctermbg=black guibg=black ctermfg=white guifg=white
hi Question       ctermbg=black guibg=black ctermfg=grey guifg=grey
hi Repeat         ctermbg=black guibg=black ctermfg=white guifg=white
hi Search         ctermbg=black guibg=black ctermfg=green guifg=green
hi SpecialChar    ctermbg=black guibg=black ctermfg=white guifg=white
hi SpecialComment ctermbg=black guibg=black ctermfg=white guifg=white
hi Special        ctermbg=black guibg=black ctermfg=white guifg=white
hi SpecialKey     ctermbg=white guibg=white ctermfg=black guifg=black
hi Statement      ctermbg=black guibg=black ctermfg=white guifg=white
hi StatusLine     ctermbg=white guibg=white ctermfg=red guifg=red
hi StatusLineNC   ctermbg=black guibg=black ctermfg=grey guifg=grey
hi StorageClass   ctermbg=black guibg=black ctermfg=white guifg=white
hi String         ctermbg=black guibg=black ctermfg=grey guifg=grey
hi Structure      ctermbg=black guibg=black ctermfg=white guifg=white
hi Tag            ctermbg=black guibg=black ctermfg=red guifg=red
hi Title          ctermbg=black guibg=black ctermfg=grey guifg=grey
hi Todo           ctermbg=black guibg=black ctermfg=white guifg=white
hi Typedef        ctermbg=black guibg=black ctermfg=white guifg=white
hi Type           ctermbg=black guibg=black ctermfg=white guifg=white
hi VertSplit      ctermbg=black guibg=black ctermfg=grey guifg=grey
hi Visual         ctermbg=black guibg=black ctermfg=grey guifg=grey
hi VisualNOS      ctermbg=black guibg=black ctermfg=grey guifg=grey
hi WarningMsg     ctermbg=black guibg=black ctermfg=red guifg=red
hi WildMenu       ctermbg=white guibg=white ctermfg=darkgrey guifg=#606060
else

hi Normal          ctermbg=0  ctermfg=250
hi Boolean         ctermbg=0  ctermfg=250
hi Character       ctermbg=0  ctermfg=9
hi Comment         ctermbg=0  ctermfg=59 
hi Condtional      ctermbg=0  ctermfg=9
hi Constant        ctermbg=0  ctermfg=9
hi Cursor          ctermbg=15  ctermfg=250
hi Debug           ctermbg=0  ctermfg=250
hi Define          ctermbg=0  ctermfg=15
hi Delimiter       ctermbg=0  ctermfg=250
"hi DiffAdd         ctermbg=  ctermfg=  cterm=NONE
hi DiffChange      ctermbg=15  ctermfg=59
hi DiffDelete      ctermbg=0  ctermfg=59 
hi DiffText        ctermbg=9  ctermfg=15
hi Directory       ctermbg=0  ctermfg=15
hi Error           ctermbg=9  ctermfg=15
hi ErrorMsg        ctermbg=9  ctermfg=15
hi Exception       ctermbg=0  ctermfg=250
hi Float           ctermbg=0  ctermfg=9  cterm=NONE
hi FoldColumn      ctermbg=0  ctermfg=250
hi Folded          ctermbg=0  ctermfg=9
hi Function        ctermbg=0  ctermfg=15
hi Identifier      ctermbg=0  ctermfg=250
hi Include         ctermbg=0  ctermfg=15
hi IncSearch       ctermbg=14  ctermfg=59
hi Keyword         ctermbg=0  ctermfg=9
hi Label           ctermbg=0  ctermfg=15
hi LineNr          ctermbg=0  ctermfg=59 
hi Macro           ctermbg=0  ctermfg=250
hi ModeMsg         ctermbg=0  ctermfg=250
hi MoreMsg         ctermbg=0  ctermfg=250
hi NonText         ctermbg=0  ctermfg=59 
hi Number          ctermbg=0  ctermfg=9  cterm=NONE
hi Operator        ctermbg=0  ctermfg=15
hi PreCondit       ctermbg=0  ctermfg=15
hi PreProc         ctermbg=0  ctermfg=15
hi Question        ctermbg=0  ctermfg=250
hi Repeat          ctermbg=0  ctermfg=15
hi Search          ctermbg=0  ctermfg=14
hi SpecialChar     ctermbg=0  ctermfg=15
hi SpecialComment  ctermbg=0  ctermfg=15
hi Special         ctermbg=0  ctermfg=15
hi SpecialKey      ctermbg=15  ctermfg=0
hi Statement       ctermbg=0  ctermfg=15
hi StatusLine      ctermbg=15  ctermfg=9
hi StatusLineNC    ctermbg=0  ctermfg=250
hi StorageClass    ctermbg=0  ctermfg=15
hi String          ctermbg=0  ctermfg=250
hi Structure       ctermbg=0  ctermfg=15
hi Tag             ctermbg=0  ctermfg=9
hi Title           ctermbg=0  ctermfg=250
hi Todo            ctermbg=0  ctermfg=15
hi Typedef         ctermbg=0  ctermfg=15
hi Type            ctermbg=0  ctermfg=15
hi VertSplit       ctermbg=0  ctermfg=250
hi Visual          ctermbg=0  ctermfg=250
hi VisualNOS       ctermbg=0  ctermfg=250
hi WarningMsg      ctermbg=0  ctermfg=9
hi WildMenu        ctermbg=15  ctermfg=59
endif
