call pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on
set encoding=utf-8

set ttimeoutlen=50

set t_Co=256
colorscheme solarized

" Disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> gT
inoremap <Left> <Esc>gT
noremap  <Right> gt
inoremap <Right> <Esc>gt

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

let maplocalleader = ","

"map <localleader>t <Plug>RubyTestRun
"map <localleader>l <Plug>RubyTestRunLast
"map <localleader>r <Plug>RubyFileRun

" Rspec.vim mappings
map <localleader>t :call RunCurrentSpecFile()<CR>
map <localleader>s :call RunNearestSpec()<CR>
"map <localleader>l :call RunLastSpec()<CR>
map <localleader>a :call RunAllSpecs()<CR>

" map localleader r to execute as ruby, regardless of content - overrides
" rubytest plugin
nnoremap <localleader>r :!ruby %<cr>

" 2 space tabs
set tabstop=2
set shiftwidth=2
set expandtab
retab

set nocompatible      " Use vim, no vi defaults
set rnu                        " Realtive line numbers
set nowrap                        " don't wrap lines
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set noswapfile                    " swap files are a pain in the ass

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
let g:ctrlp_root_markers = ['Capfile']

" remove whitespace
nnoremap <localleader>w :%s/\s\+$//<cr>

" automatically remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" backup and swp
set backupskip=/tmp/*,/private/tmp/* " don't backup files in these directories (eg crontab)

" map (shift "section" ie the key to the left of 1) in insert mode to create a ruby string interpolated variable
inoremap § #
inoremap ± #{}<left>

" pretty format xml
nnoremap <localleader>x :%s/></>\r</g<cr>:0<cr>=:$<cr>

" show and hide NERDTree
map <localleader>tn :NERDTreeToggle<cr>
" open files / directories with space
let NERDTreeMapActivateNode='<space>'
" show the current file in a new tree
map <localleader>tf :NERDTreeFind<cr>

" map ,. in insert mode to hash rocket
inoremap <localleader>. <space>=><space>

" scroll window before cursor reaches top/bottom
set scrolloff=5

" stop vim commenting multiple lines when pasting code containing a comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" toggle line numbers
nnoremap <localleader>l :set nonumber!<cr>

" enables vim-airline
set laststatus=2

" sexy airline arrows
let g:airline_powerline_fonts=1

" keybindings for xmpfilter
nmap <localleader>x <Plug>(xmpfilter-run)
nmap <localleader>z <Plug>(xmpfilter-mark)
