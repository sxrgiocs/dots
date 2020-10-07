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
    " Intellisense. Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Buffer for lightline
    Plug 'taohexxx/lightline-buffer'
    " Devicons
    Plug 'ryanoasis/vim-devicons'
    " Latex Live Preview
    Plug 'xuhdev/vim-latex-live-preview' 
    " LanguageTool
    Plug 'dpelle/vim-LanguageTool'

call plug#end()
