" Vim
" An example for a vimrc file.
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"             for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
" Give a warning so the user knows that there is something odd about vimrc.
" 
" There are three kinds of things which are defined in this file:
" Mapping ("map"), settings ("set"), and abbreviations ("ab").
"   Settings affect the behaviour of commands.
"   Mappings maps a string to a command.
"   Abbreviations define words which are replaced after they are typed in.
"

set nocompatible	" Use Vim defaults (much better!)
set bs=2		" allow backspacing over everything in insert mode
"set ai			" always set autoindenting on
"set tw=78		" always limit the width of text to 78
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers

" Don't use Ex mode, use Q for formatting
map Q gq


" expand tabs
" set expandtab

" report result of commands over one or more lines
set report=1 tabstop=4

" Enclose a line in comments 
map v		I/*A*/
map V 		^xx$xx
" Format a paragraph (72 characters) without breaking words
map f		!}fmt 
"
"
"       ,L  = "Last updated" - insert time stamp and delete old time stamp
map     ,L mz1G/Last update: */e+1<CR>D:r!date<CR>kJ


"interactive spell check
" works only in non-gui mode for now
map #sp :w<CR>:!ispell %<CR>:e %<CR> 

"     dictionary: english words first
set   dictionary=/usr/share/dict/words,/usr/share/dict/linux.words
"

" Define "del" char to be the same backspace (saves a LOT of trouble!)
map <C-V>127 <C-H>

"
"     autowrite: "on" saves a lot of trouble
set   autowrite

"
" comments default: sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-
set comments=b:#,:%,:\",fb:-,n:>,n:),n:\"



" ========================================================================
" PGP - encryption and decrypttion
" ========================================================================
"
" encrypt
nmap ;e :%!/bin/sh -c 'pgp -c 2>/dev/tty'
vmap ;e :%!/bin/sh -c 'pgp -c 2>/dev/tty'
" decrypt
nmap ;d :/^-----BEG/,/^-----END/!/bin/sh -c 'pgp  2>/dev/tty'
vmap ;d :/^-----BEG/,/^-----END/!/bin/sh -c 'pgp  2>/dev/tty'
" sign 
nmap ;s :,$! /bin/sh -c 'pgp -fast +clear 2>/dev/tty'
" 
nmap ;v :,/^-----END/w !pgp -m

"=========================================================================

"let myfiletypefile = "~/.vim/myfiletypes.vim"
let mysyntaxfile = "~/.vim/zpl.vim"


