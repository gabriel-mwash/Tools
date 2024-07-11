set number
set scrolloff=12


" WHITESPACE
set wrap
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab
set noshiftround
set ignorecase
set hidden
set clipboard=unnamedplus
set mouse=a
set noswapfile
let mapleader = ","

" SEARCH
set incsearch
set hlsearch

" linters setup
let g:ale_linters = { "python" : ["flake8"],}


" setting the cursor to line in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"TAB COMPLETION AND CONFIRMATION
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" using tab and s-tab to navigate the completion list
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"


"switch from insert to normal mode
inoremap <nowait> jj <Esc>

" ARROWKEYS REMAP
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

"REMAPS FOR TREVERSING THE BUFFER LIST
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"COLORSCHEME
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

"emmet config
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='a'

" PLUGINS GO HERE ('VIM-PLUG')
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch' : 'release'} 
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'Kristijanhusak/vim-dadbod-ui'
Plug 'Kristijanhusak/vim-dadbod-completion'
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag' 
call plug#end()
