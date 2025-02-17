:set clipboard+=unnamedplus
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set mouse=a
:set softtabstop=4

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'tc50cal/vim-terminal'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim'
call plug#end()

colorscheme iceberg
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR> 
nmap <F8> :TagbarToggle<CR>
nmap <F5> <Esc>:w<CR>:!clear;python %<CR>
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"
if &term == 'xxterm-256color'
    let &t_ut=''
endif
