" Stuffs I better remember:
" ci<character> - Remove stuffs between charecters and edit
" yi<character> - Yank between characters

" Shell code folding
set nocompatible
filetype plugin indent on
set foldenable
set foldmethod=marker
au FileType sh let g:sh_fold_enabled=5
au FileType sh let g:is_bash=1
au FileType sh set foldmethod=syntax
syntax enable
set switchbuf=usetab,newtab

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
nnoremap <C-Right> gt
nnoremap <C-Left> gT

map <F8> :set number!<CR>
map <F7> :set paste!<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Highlight extra white spaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Enable pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" List of pathogen bundles:
" https://github.com/scrooloose/nerdtree.git
" https://github.com/Xuyuanp/nerdtree-git-plugin.git
" https://github.com/vim-airline/vim-airline
" https://github.com/tpope/vim-fugitive
" https://github.com/airblade/vim-gitgutter
" https://github.com/rodjek/vim-puppet
" https://github.com/tpope/vim-surround.git
" https://github.com/tmhedberg/SimpylFold.git
" https://github.com/jistr/vim-nerdtree-tabs.git

" NERDTree
" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>
" Auto start NERDTree
" autocmd vimenter * NERDTree

" Enable powerline font for vim-airline
let g:airline_powerline_fonts = 1

" SimplyFold options
let g:SimpylFold_docstring_preview = 1
