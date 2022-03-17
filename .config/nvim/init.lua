vim.opt.mouse = 'a'
vim.opt.backup = false
vim.opt.clipboard = ""
vim.opt.cmdheight = 1
vim.opt.colorcolumn = "99999"
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.foldexpr = ""
vim.opt.foldmethod = "manual"
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.listchars = "tab:│ ,trail:·,nbsp:+"
vim.opt.number = true
vim.opt.numberwidth = 1
vim.opt.pumheight = 10
vim.opt.relativenumber = false
vim.opt.scrolloff = 4
vim.opt.shiftwidth = 2
vim.opt.sidescrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.termguicolors = false
vim.opt.timeoutlen = 500
vim.opt.title = true
vim.opt.titlestring = "%<%F - nvim"
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.wrap = true
vim.opt.writebackup = false
vim.opt.showtabline = 2
vim.opt.laststatus = 2

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'gruvbox-community/gruvbox'
  use 'vim-airline/vim-airline'
  use 'ryanoasis/vim-devicons'
  use 'preservim/nerdtree'
  use 'jiangmiao/auto-pairs'
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      {'neovim/nvim-lspconfig'},
      {'williamboman/nvim-lsp-installer'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
end)

vim.opt.termguicolors = true
pcall(vim.cmd, 'colorscheme gruvbox')

local lsp = require('lsp-zero')
require'lspconfig'.gopls.setup{}
lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()
