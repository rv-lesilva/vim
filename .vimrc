call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go'
call plug#end()

set laststatus=2
set nowrap
set backspace=2
set clipboard=unnamed
set ts=2 sw=2 sts=2 et

let g:dracula_colorterm = 0
let g:dracula_italic = 0
let g:lightline = {'colorscheme':'Dracula'}

colorscheme dracula

map <C-o> :NERDTreeToggle<CR>
map <C-p> :GFiles<CR>

command -nargs=1 GoFind vimgrep /<args>/gj ./**/*.go
