" Reset
set nocompatible

" Run pathogen
execute pathogen#infect()


" Smart file type determination 
filetype indent plugin on
 
" Enable syntax highlighting
syntax on
 
" Better seperation of buffers
set hidden

" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight search
set hlsearch
 
" ToDo: use the securemodelines script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Enable auto indent 
set autoindent

" Do not reset to beginning of line on moving up or down
set nostartofline
 
" Enable ruler
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2

" Ask on error
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell

" And disable it as well
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
 
"Increase command height
set cmdheight=2
 
" Display line numbers on the left
set number
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


" By default, use spaced tabs.
set expandtab
" Display tabs as 2 spaces wide. When expandtab is set, use 2 spaces.
set shiftwidth=2
set tabstop=2

function TabsOrSpaces()
" Determines whether to use spaces or tabs on the current buffer.
  if getfsize(bufname("%")) > 256000
    " File is very large, just use the default.
    return
  endif

  let numTabs=len(filter(getbufline(bufname("%"), 1, 250), 'v:val =~ "^\\t"'))
  let numSpaces=len(filter(getbufline(bufname("%"), 1, 250), 'v:val =~ "^ "'))
 
  if numTabs > numSpaces
    setlocal noexpandtab
  endif
endfunction

autocmd BufReadPost * call TabsOrSpaces()

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Display special chars
set listchars=eol:¬,tab:»·,trail:~,precedes:«,extends:»
set list

" Helper if one forgets sudo
cmap w!! w !sudo tee % >/dev/null
