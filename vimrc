" ## MAIN SETTINGS

" Get rid of silly legacy vi mode
set nocompatible

" Turn off when setting up vundle
filetype off
" Initialize vundle
set rtp+=~/.vim/bundle/vundle/
let vundlepath = '~/.vim/bundle/'
call vundle#rc(vundlepath)

"List of plugins vundle should manage
Plugin 'gmarik/vundle'
Plugin 'sjl/badwolf'

" Turn back on after vundle initialized
filetype plugin indent on

" ## BACKUP AND SWAP FILES
set noswapfile   " damn swapfiles to hell
set backup       " in case I accidently my code

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

" Make those folders automatically if they don't already exist. 
" (From stevelosh)
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" ## WILDCARD MENU (from stevelosh)
set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files

" ## KEY MAPPINGS
inoremap jk <esc>
inoremap kj <esc>

" ## THEME/COLORS
set t_Co=256  " enable 256-color mode.
syntax enable " enable syntax highlighting (previously syntax on).

" Highlight characters that go over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set background=dark
colorscheme badwolf

" ## VIM UI
set number " show line numbers
set laststatus=2 " last window always has a statusline
set nohlsearch " Don't continue to highlight searched phrases.
set incsearch " But do highlight as you type your search.
set ignorecase " Make searches case-insensitive.
set ruler " Always show info along bottom.
set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)

" ## TEXT FORMATTING
autocmd FileType make setlocal noexpandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set nowrap
