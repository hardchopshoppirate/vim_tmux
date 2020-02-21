set nocompatible              " be iMproved, required
filetype off                  " required

set directory^=$HOME/.vim_swap// " put all swap files together in one place

" General
" set number  " Show line numbers
set number relativenumber " Show relative number
set linebreak " Break lines at word (requires Wrap lines)
set showbreak=+++ " Wrap-broken line prefix
set textwidth=140 " Line wrap (number of cols)
set showmatch " Highlight matching brace
set visualbell  " Use visual bell (no beeping)

set hlsearch  " Highlight all search results
set smartcase " Enable smart-case search
set ignorecase  " Always case-insensitive
set incsearch " Searches for strings incrementally

set autoindent  " Auto-indent new lines
set expandtab " Use spaces instead of tabs
set shiftwidth=2  " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab  " Enable smart-tabs
set softtabstop=2 " Number of spaces per Tab

" Advanced
set ruler " Show row and column ruler information
" Set scroll off at 5 line to the end
set so=5

set cursorline
set undolevels=1000 " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

" set mouse=a " activate mouse

" show filename
set statusline+=%F
" Display status line always
" set laststatus=2
" Custom

"Always display the status line
" set laststatus=2

"Use utf-8 Encoding
set encoding=utf-8

"Enable 256 colors
set t_Co=256

"Add warnings to status bar
set statusline+=%#warningmsg#

"Back to normal color
set statusline+=%*


"Build Fuzzy Finder
"Search and autocomplete into subfolders
set path+=**

"Append to existing value of path
"the 2 stars tells vim to search Subdirectorties recursively in the folder vim is running
"Use Tab for auto completion
set wildmenu


" Clipboard settings
set clipboard=unnamedplus
" Map Y to copy and P to paste with +clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" TAG JUMPING
" Creates the `tags` file
command! MakeTags !ctags -R .
" NOW WE CAN
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tags stack

let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1		" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" I guess it hides .gitignore
" let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide='.*\.swp$,.*\.orig$'

" let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Set netrw width size
let g:netrw_winsize=75


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" Plug 'tpope/vim-sensible'
" Plug 'junegunn/seoul256.vim'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ludovicchabant/vim-lawrencium'
" Plug 'christoomey/vim-tmux-navigator'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" vim-javascript
" Enables syntax highlighting for JSDocs.
let g:javascript_plugin_jsdoc = 1

" Enables syntax highlighting for Flow.
let g:javascript_plugin_flow = 1

" leafgarland/typescript-vim
" choose compiler
let g:typescript_compiler_binary = 'tsc'
" compiler options to use it like `tsc --lib es6 $* %`
let g:typescript_compiler_options = '--lib es6'

" vim-jsx-typescript
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
" autocmd BufNewFile,BufRead *.jsx set filetype=.jsx
" autocmd BufNewFile,BufRead *.js set filetype=.js
" autocmd BufNewFile,BufRead *.ts set filetype=.ts


" maxmellon/vim-jsx-pretty
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" vim-airline
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
