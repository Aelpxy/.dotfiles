set exrc
set guicursor=
set nu
set noerrorbells
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
set noswapfile
set smartindent
set smartcase
set nobackup
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

call plug#begin()
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none
