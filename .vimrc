call plug#begin('~/.vim/plugged')
" Dracula Theme
Plug 'dracula/vim'

" Nerd three
Plug 'preservim/NERDTree'
Plug 'scrooloose/nerdtree'

" Icons
Plug 'ryanoasis/vim-devicons'

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'pangloss/vim-javascript'

Plug 'leafgarland/typescript-vim'

Plug 'peitalin/vim-jsx-typescript'

Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'ap/vim-css-color'

" Coc vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" automaticlly guess indentation settings
Plug 'tpope/vim-sleuth'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" For indentation
Plug 'Yggdroot/indentLine'

"Vim signify
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

"Vim git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" Multiple cursor editing
Plug 'terryma/vim-multiple-cursors'

" NERD comment
Plug 'preservim/nerdcommenter'
" Commentary
Plug 'tpope/vim-commentary'

"Auto pairs
Plug 'jiangmiao/auto-pairs'

"Ack
Plug 'mileszs/ack.vim'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" highlighting for large files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Theme
syntax enable
colorscheme dracula

"Show number
set number

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 20
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

set clipboard=unnamed

