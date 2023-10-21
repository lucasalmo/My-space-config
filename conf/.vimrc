"Plugins
call plug#begin('~/.vim/plugged')

	Plug 'morhetz/gruvbox'
	Plug 'gruvbox-community/gruvbox'
	Plug 'scrooloose/nerdtree'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'vim-syntastic/syntastic'
  Plug 'w0rp/ale'
  Plug 'eslint/eslint'
  
call plug#end()

"let g:prettier#autoformat = 1
"let g:prettier#autoformat_config_prese = 1 
"let g:prettier#exec_cmd_async = 1
"let g:prettier#quickfix_enabled  = 1
"let g:prettier#quickfix_auto_focus = 0

"ESlint
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_fixers = {
\  'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1


autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html Prettier

"NerdTree
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

set autoindent expandtab tabstop=2 shiftwidth=2

set relativenumber
set laststatus=2
set title
syntax on
set cursorline
set wildmenu
set laststatus=2
set autoindent
set background=dark
set colorcolumn=80
set incsearch
set ignorecase
set showcmd
set showmode
set showmatch
set hlsearch
set wildmenu
set wildmode=list:longest
set eb
set encoding=utf8
colorscheme gruvbox

" Map keyboard
map <C-p> :Prettier<CR>
map <C-b> :NERDTree<CR>
map <C-c> :NERDTreeClose<CR>
map <C-l> :ALEFix<CR>
