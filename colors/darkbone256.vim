" Name:		darkbone.vim
" Maintainer:	Kojo Sugita
" Last Change:	2008-11-22
" Revision:	1.1
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'darkbone256'
"default colors
hi Normal 	guifg=#a0a0c0 ctermfg=248 guibg=#000000 ctermbg=0
"hi NonText 	guifg=#606080 ctermfg=60 guibg=#101020 ctermbg=233 gui=none
hi NonText 	guifg=#606080 ctermfg=60 guibg=#000000 ctermbg=000 gui=none
hi SpecialKey 	guifg=#404060 ctermfg=239
hi Cursor 	guifg=#000000 ctermfg=0 guibg=#a0a0c0 ctermbg=248
hi CursorLine	guibg=#303050 ctermbg=237
hi CursorColumn guibg=#303050 ctermbg=237
hi lCursor 	guifg=#000000 ctermfg=0 guibg=#a0a0c0 ctermbg=248
hi CursorIM 	guifg=#000000 ctermfg=0 guibg=#a0a0c0 ctermbg=248
" Directory
hi Directory 	guifg=#e0e0ff ctermfg=189 guibg=#000000 ctermbg=0 gui=bold
" Diff
hi DiffAdd 	guifg=#8090f0 ctermfg=105 guibg=#000000 ctermbg=0 gui=none
hi DiffChange 	guifg=#8090f0 ctermfg=105 guibg=#000000 ctermbg=0 gui=none
hi DiffDelete 	guifg=#8090f0 ctermfg=105 guibg=#000000 ctermbg=0 gui=none
hi DiffText 	guifg=#8090f0 ctermfg=105 guibg=#000000 ctermbg=0 gui=bold
" Message
hi ModeMsg 	guifg=#a0a0c0 ctermfg=248 guibg=#000000 ctermbg=0
hi MoreMsg 	guifg=#a0a0c0 ctermfg=248 guibg=#000000 ctermbg=0
hi ErrorMsg 	guifg=#ee1111 ctermfg=9 guibg=#000000 ctermbg=0
hi WarningMsg 	guifg=#ee1111 ctermfg=9 guibg=#000000 ctermbg=0
hi VertSplit 	guifg=#606080 ctermfg=60 guibg=#606080 ctermbg=60
" Folds
hi Folded 	guifg=#a0a0c0 ctermfg=248 guibg=#000000 ctermbg=0
hi FoldColumn 	guifg=#a0a0c0 ctermfg=248 guibg=#102010 ctermbg=233
" Search
hi Search 	guifg=#000000 ctermfg=0 guibg=#c0c0ff ctermbg=147 gui=none
hi IncSearch 	guifg=#000000 ctermfg=0 guibg=#c0c0ff ctermbg=147 gui=none cterm=NONE
hi LineNr 	guifg=#606080 ctermfg=60 guibg=#000000 ctermbg=0 gui=none
hi Question 	guifg=#a0a0c0 ctermfg=248 guibg=#000000 ctermbg=0
"\n, \0, %d, %s, etc...
" hi Special	guifg=#d0e080 guibg=#000000 gui=none
hi Special 	guifg=#808080 ctermfg=244 guibg=#000000 ctermbg=0 gui=none
" status line
hi StatusLine 	guifg=#c0c0ff ctermfg=147 guibg=#000000 ctermbg=0 gui=bold,underline
hi StatusLineNC guifg=#606080 ctermfg=60 guibg=#000000 ctermbg=0 gui=bold,underline
hi WildMenu 	guifg=#000000 ctermfg=0 guibg=#c0c0ff ctermbg=147
hi Title 	guifg=#c0c0ff ctermfg=147 guibg=#000000 ctermbg=0 gui=bold
hi Visual 	guifg=#000000 ctermfg=0 guibg=#707090 ctermbg=60 gui=none
hi VisualNOS 	guifg=#a0a0c0 ctermfg=248 guibg=#000000 ctermbg=0
hi Number 	guifg=#d0e080 ctermfg=186 guibg=#000000 ctermbg=0
hi Char 	guifg=#d0e080 ctermfg=186 guibg=#000000 ctermbg=0
hi String	guifg=#d0e080 ctermfg=186 guibg=#000000 ctermbg=0
hi Boolean	guifg=#d0e080 ctermfg=186 guibg=#000000 ctermbg=0
hi Comment	guifg=#606080 ctermfg=60
hi Constant	guifg=#f0a0b0 ctermfg=217 guibg=#000000 ctermbg=0 gui=none
hi Identifier	guifg=#8090f0 ctermfg=105
hi Statement	guifg=#8090f0 ctermfg=105 gui=none
"Procedure name
hi Function	guifg=#f0b040 ctermfg=215
"Define, def
" hi PreProc	guifg=#f0a0b0 gui=none
hi PreProc	guifg=#e0e0ff ctermfg=189 gui=none
hi Type		guifg=#e0e0ff ctermfg=189 gui=none
hi Underlined	guifg=#a0a0c0 ctermfg=248 gui=underline
hi Error	guifg=#ee1111 ctermfg=9 guibg=#000000 ctermbg=0
hi Todo		guifg=#8090f0 ctermfg=105 guibg=#000000 ctermbg=0 gui=none
hi SignColumn	guibg=#000000 ctermbg=0
" Matches
hi MatchParen	guifg=#a0a0c0 ctermfg=248 guibg=#404080 ctermbg=60 gui=none
if version >= 700
" Pmenu
hi Pmenu	guibg=#202040 ctermbg=235
hi PmenuSel	guibg=#404080 ctermbg=60 guifg=#a0a0c0 ctermfg=248
hi PmenuSbar	guibg=#202040 ctermbg=235
" Tab
hi TabLine	guifg=#606080 ctermfg=60 guibg=black gui=underline
hi TabLineFill	guifg=#a0a0c0 ctermfg=248 guibg=black gui=none
hi TabLineSel	guifg=#c0c0ff ctermfg=147 guibg=#606080 ctermbg=60 gui=bold
endif

hi SpellBad	cterm=underline ctermfg=red ctermbg=NONE
hi SpellCap	cterm=underline ctermfg=blue ctermbg=NONE
hi SpellRare	cterm=underline ctermfg=blue ctermbg=NONE
" vim:set ts=8 sts=2 sw=2 tw=0:
