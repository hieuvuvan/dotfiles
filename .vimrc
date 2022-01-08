set tabstop=2 shiftwidth=2 hidden smartindent
set noshowmode laststatus=2 wildmenu
set relativenumber number
set visualbell t_vb=
let g:netrw_banner = 0
set termguicolors

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!**/.git/**"'
let g:fzf_preview_window = []
let g:gutentags_file_list_command = 'rg --files'

let mapleader = ","
nmap <c-p> :Files<cr>
nmap <leader>p :BTags<cr>

autocmd BufNewFile,BufRead *.go nmap <leader>b :GoBuild<cr>
autocmd BufNewFile,BufRead *.go nmap <leader>t :GoTestFunc<cr>
autocmd BufNewFile,BufRead *.go nmap <leader>i :GoInfo<cr>
autocmd BufNewFile,BufRead *.go nmap <leader>o :GoImports<cr>


call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'


call plug#end()
