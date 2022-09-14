set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartcase
set smartindent
set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80

set cmdheight=2

call plug#begin('~/.vim/plugged')

" Gruvbox && other theme
Plug 'gruvbox-community/gruvbox'
Plug 'luisiacc/gruvbox-baby'

Plug 'vim-conf-live/vimconflive2021-colorscheme'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

" Telescope
Plug 'BurntSushi/ripgrep'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" lsp
Plug 'neovim/nvim-lspconfig'

" cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Dart && Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

" Isort && Auto Pairs && Comment
Plug 'brentyi/isort.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'

" Python lint/fix
Plug 'dense-analysis/ale'
Plug 'Vimjas/vim-python-pep8-indent'

" Vue
Plug 'storyn26383/vim-vue'

" C#
Plug 'OmniSharp/omnisharp-vim'

" Go
Plug 'darrikonn/vim-gofmt'

call plug#end()

lua require 'jj'
" lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}

set completeopt=menu,menuone,noselect

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>


nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" Fix files with prettier, and then ESLint.
let g:ale_linters = {'python': ['flake8', 'pydocstyle'], 'vue': ['eslint', 'prettier'], 'go': ['gopls'], }
" Equivalent to the above.
let g:ale_fixers = {'python': ['isort', 'autopep8', 'black'], 'vue': ['eslint', 'prettier'], '*': ['remove_trailing_lines', 'trim_whitespace']}
" Fix on save
let g:ale_fix_on_save = 1

autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
