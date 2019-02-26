call plug#begin('~/.vim/plugged')

Plug 'thoughtbot/vim-rspec'
Plug 'jgdavey/tslime.vim'
Plug 'tpope/vim-rails'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" Configure netrw for directory navigation
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4

" Configure tslime to use current session/window
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
