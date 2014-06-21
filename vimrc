set nocompatible
let mapleader=","
filetype plugin indent on

call pathogen#infect()

set mouse=a " use mouse in vim

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

set linebreak " (lbr) wrap long lines at a space instead of in the middle of a word

"set exrc            " enable per-directory .vimrc files
"set secure          " disable unsafe commands in local .vimrc files

syntax on
set autoindent
set incsearch
set smartcase
set ignorecase
set showmatch
set hlsearch
nnoremap <leader>h :set hlsearch!<CR>

set ruler

set spell
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi SpellBad cterm=underline ctermfg=red
hi SpellCap cterm=underline ctermfg=blue
hi SpellRare cterm=underline ctermfg=blue
set spellfile+=$HOME/.vim/dict.add

set title " show file title top of xterm

if exists('+relativenumber')
    set relativenumber
    nnoremap <leader>r :set relativenumber!<CR>
endif

if has('persistent_undo')
    set undofile
    set undodir=$HOME/.vim/vimundo
endif

set history=500

set backup
set backupdir=$HOME/.vim/backup//

set directory=$HOME/.vim/vimswp//,$HOME/tmp//,/var/tmp//,/tmp//,.

set scrolloff=3
let java_allow_cpp_keywords = 1
"let java_highlight_functions="style"
"let java_highlight_debug=1
hi javaParen ctermfg=blue guifg=#0000ff
hi javaParen1 ctermfg=cyan guifg=#0000ff
hi javaParen2 ctermfg=white guifg=#0000ff

"nnoremap <D-/> 0i//<ESC>
"nnoremap <LEFT> %
"nnoremap <RIGHT> %
"nnoremap <UP> (
"nnoremap <DOWN> )

"disable help
noremap <F1> <NOP>

"set wrap
"set textwidth=79
"set formatoptions=qrn1
"set colorcolumn=85

" Remove comment leader when joining lines
set formatoptions+=j

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

vnoremap <TAB> >
vnoremap <S-TAB> <

"reformat block to text width
noremap <Leader>w gqap

set backspace=indent,eol,start
set whichwrap+=<,>,[,],h,l

autocmd FileType java,c iabbrev retrun return
autocmd FileType java,c iabbrev retunr return
autocmd FileType java,c iabbrev defualt default
nnoremap <leader>a i/**<CR><SPACE>*<SPACE>Author<SPACE>Frank<SPACE>Dinoff<CR>*/<CR><BACKSPACE>

nnoremap <Leader>c :exec 'set' (&colorcolumn ==# '') ? 'colorcolumn=+1' : 'colorcolumn='<CR>
nnoremap <Leader>z :set spell!<CR> :if exists("g:syntax_on") <BAR> syntax off <BAR> else <BAR> syntax enable <BAR> endif <CR>


autocmd BufReadPost *.txt,*.tex setlocal textwidth=80

autocmd BufReadPost *.rkt setlocal filetype=lisp

" Restore cursor position in files
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"zt" |
            \ endif

autocmd FileType make setlocal noet ts=8 sw=8 nocindent

" remap accidental Shifts
command! Wq wq
command! W w

if has("macunix")
    colorscheme darkbone256
elseif has("unix")
    set t_Co=256
    colorscheme darkbone256
endif

if has("macunix")
    " yank to mac clipboard (for copy and paste)
    nnoremap yy yy"*yy
    vnoremap y ygv"*y
elseif has("unix")
    " yank to linux clipboard (untested) (need to check register)
"    nnoremap yy "+yyyy
"    vnoremap y "+ygvy
endif
" this moves all changes to mac clipboard
" I feel it does too much
" set clipboard=unnamed

function! MyBufEnter()
    " don't (re)store filepos for git commit message files
    if &filetype =~ "git.*"
        call setpos('.', [0, 1, 1, 0])
    endif
endfunction
au BufEnter * call MyBufEnter()

if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function! XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif

nnoremap <F5> :GundoToggle<CR>

noremap <F8> :TagbarToggle<CR>

set cinoptions+=l1,g0,t0,(0,N-s

set hidden
