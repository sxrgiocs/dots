" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Lightline
    Plug 'itchyny/lightline.vim'
    " Ranger File Manager
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    " Buffer for lightline
    Plug 'taohexxx/lightline-buffer'
    " Devicons
    Plug 'ryanoasis/vim-devicons'
    " Latex 
    Plug 'xuhdev/vim-latex-live-preview' 
    "Plug 'lervag/vimtex'
    " Ultisnips
    "Plug 'SirVer/ultisnips' 
    "Plug 'honza/vim-snippets'
    " Autocomplete
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    " LanguageTool
    Plug 'dpelle/vim-LanguageTool'
    " Markdown Preview
    Plug 'conornewton/vim-pandoc-markdown-preview', {'for': 'markdown'} 
    " Markdown TOC
    Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown'}
    " R Markdown
    Plug 'vim-pandoc/vim-rmarkdown', {'for': ['markdown', 'rmarkdown']}
    " Pandoc
"    Plug 'vim-pandoc/vim-pandoc'
"    Plug 'vim-pandoc/vim-pandoc-syntax'
    call plug#end()
