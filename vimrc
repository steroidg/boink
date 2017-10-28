" Set default tab spacing
set expandtab
set tabstop=2
set shiftwidth=2

" Wildmode and wildmenu setting for better command completion
set wildmode=longest,list,full
set wildmenu

" Enable line numbers by default
set number

" Remap Alt-arrow keys for split screen navigation
nnoremap <M-Up> <C-w><Up>
nnoremap <M-Down> <C-w><Down>
nnoremap <M-Left> <C-w><Left>
nnoremap <M-Right> <C-w><Right>

map <F8> :set number!<CR>
map <F8> :set number!<CR>
map <F7> :set paste!<CR>

" Enable pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" List of pathogen bundles:
" https://github.com/scrooloose/nerdtree.git
" https://github.com/Xuyuanp/nerdtree-git-plugin.git
" https://github.com/vim-airline/vim-airline
" https://github.com/tpope/vim-fugitive
" https://github.com/airblade/vim-gitgutter
" https://github.com/rodjek/vim-puppet

" NERDTree 
" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>

" Auto start NERDTree (disabled for now)
" autocmd vimenter * NERDTree

" Enable powerline font for vim-airline
let g:airline_powerline_fonts = 1
