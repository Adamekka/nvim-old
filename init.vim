:set number " Turns on numbered lines
:set relativenumber " Turns on relative numbers on lines
:set cursorline " Highlights cursor horizontally
:set cursorcolumn " Highlights cursor vertically
:set autoindent
:set tabstop=4 " Sets tab width to 4 columns
:set shiftwidth=4 " Sets shift width to 4 spaces
:set smarttab
:set softtabstop
:set mouse=a " Turns on mouse support
:set nocompatible " Disables vi compatibility
:set expandtab " Use space chars instead of tabs
:set nobackup " Do not save backup files
:set scrolloff=10 " Do not let cursor scroll below of above N num of lines when scrolling
:set incsearch " While searching though a file incrementally highlight matching characters as you type
:set ignorecase " Ignore capital letters during search
:set showcmd " Show partial command you type in the last line of the screen
:set showmode " Show the mode you are on the last line
:set showmatch " Show matching words during a search
:set hlsearch " Use highlighting when doing a search
:set history=1000 " Set the commands to save in history
:set wildmenu " Enable auto completion menu after pressing TAB
:set wildmode=list:longest " Make wildmenu behave like similar to Bash completion

filetype on " Enable file type detection
filetype plugin on " Enable plugins and load plugin for the detected file type
filetype indent on " Load an indent file for detected file type

syntax on " Turns on syntax highlighting
