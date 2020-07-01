" Helps force plugins to load correctly when it is turned back on below
filetype off

" Pathogen setup
execute pathogen#infect()
syntax on
filetype plugin indent on

" Show line numbers 
"set relativenumber
set number

"augroup numbertoggle
"  autocmd!
"  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"augroup END

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
 colorscheme solarized
"colorscheme onedark

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search


" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim


" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
"set tabstop=2
set shiftwidth=2
"set softtabstop=2
set expandtab
set noshiftround


" Show file stats
set ruler

" Rendering
set ttyfast


" Mapping Ctrl-N to NerdTreeToggle
map <leader>f :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" vim-airline setting
" Get all the powerline font
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols='unicode'
"let g:airline_theme='onedark'
"let g:lightline = {
  "\ 'colorscheme': 'onedark',
  "\ }

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"if (empty($TMUX))
  "if (has("nvim"))
    ""For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    "let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  "endif
  ""For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  ""Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  "" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  "if (has("termguicolors"))
    "set termguicolors
  "endif
"endif
"

" tagbar
nmap <leader>t :TagbarToggle<CR>

