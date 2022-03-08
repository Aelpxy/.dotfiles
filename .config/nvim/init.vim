syntax on

" --- Sets --- "
set exrc
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set signcolumn=yes
set cmdheight=2
set completeopt=menuone,noinsert,noselect
set mouse=a
set autoindent

" --- Plugins --- "
call plug#begin()
    Plug 'gruvbox-community/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" --- Stuff --- "
colorscheme gruvbox
highlight Normal guibg=none

" --- Custom Keybindings --- "
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-x> :term<CR>
nnoremap <C-s> :w<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Stuff --- "
fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup AELPXY
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
