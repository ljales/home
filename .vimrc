set t_Co=256

syntax on

filetype plugin indent on
set backspace=indent,eol,start

" Show editing mode for idiots like me
set showmode
set title
" Display unprintable chars
" set list
" set listchars=tab:>\ ,trail:�

set showcmd
set ruler
set number
set nowrap
set shiftwidth=4
set tabstop=4
set autoindent
set nocompatible

" Folding
set foldcolumn=1

" Tab management
set tabpagemax=20

" F8 = new empty tab
map <silent> <F8> :tabnew<CR>
map! <silent> <F8> <ESC>:tabnew<CR>

" F7 = previous tab
map <silent> <F7> :tabprev<CR>
map! <silent> <F7> <ESC>:tabprev<CR>

" F9 = next tab
map <silent> <F9> :tabnext<CR>
map! <silent> <F9> <ESC>:tabnext<CR>

" F11 = close tab
map <silent> <F11> :tabclose<CR>
map! <silent> <F11> <ESC>:tabclose<CR>

" In visual-select mode, tab indents, C-o outdents
vmap <tab> >gv
vmap <c-o> <gv

" Paste mode!
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>


autocmd FileType perl set smartindent
au BufReadPost *.t set syntax=perl
au BufReadPost rc.conf set syntax=config
au BufReadPost monitoring.conf set syntax=xml
au BufReadPost all.log set syntax=messages
au BufNewFile,BufRead pf.conf set syntax=pf
au BufNewFile,BufRead *.tt2 setf tt2html

colorscheme torte

highlight OverLength ctermbg=236
match OverLength /\%81v.*/
