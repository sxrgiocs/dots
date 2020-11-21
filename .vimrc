color pablo-mod

"########################################################################
"#                       S O U R C E  F I L E S                         #
"########################################################################

source /home/sergio/.config/nvim/vim-plug/plugins.vim
source /home/sergio/.config/nvim/plug-config/coc.vim

"########################################################################
"#                             R E M A P S                              #
"########################################################################

let mapleader = " "

" Change Buffer
nnoremap <C-H> :bprev<CR>
nnoremap <C-L> :bnext<CR>

noremap <PageDown> <Nop>

" Write and quit
nnoremap <Leader>w :wq<CR>

" Quit without saving
nnoremap <Leader>q :q!<CR>

map  <F1> :set hls!<CR>
imap <F1> <ESC>:set hls!<CR>a
vmap <F1> <ESC>:set hls!<CR>gv

" Copy and paste
noremap <Leader>y "*y
"noremap <Leader>p "*p
noremap <Leader>Y "+y
"noremap <Leader>P "+p

" Live LaTeX and Markdown Preview
noremap <Leader>l :StartLatexPreview<CR>
noremap <Leader>mp :StartMdPreview<CR>

" Compile RMarkdown
autocmd Filetype rmd map <leader>= :w <bar> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" Vim tablemode
let g:table_mode_corner='|'

inoreabbrev <expr> <bar><bar>
        \ <SID>isAtStartOfLine('\|\|') ?
        \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
         \ <SID>isAtStartOfLine('__') ?
         \ '<c-o>:silent! TableModeDisable<cr>' : '__'

"NERDTree
map <Leader>t :NERDTreeFind<CR>

" Resize splits
map <Leader>L :vertical resize -5<CR>
map <Leader>H :vertical resize +5<CR>

map <Leader>J :res -5<CR>
map <Leader>K :res +5<CR>

"#######################################################################
"#                       S E T S  &  L E T S                           #
"#######################################################################

set fillchars+=vert:\ 

" Set spelling check
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.rmd setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd BufRead,BufNewFile *.tex setlocal spell

set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Set linewidth for certain files
autocmd BufRead,BufNewFile *.rmd setlocal textwidth=120
autocmd BufRead,BufNewFile *.py setlocal textwidth=80
autocmd BufRead,BufNewFile *.tex setlocal textwidth=120

" Give access to clipboard
set clipboard=unnamedplus

set signcolumn=no

" Numbering
set number relativenumber 

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set incsearch

set encoding=UTF-8

" PDF previews
let g:latex_pdf_viewer = 'zathura'
let g:md_pdf_viewer='zathura'
let g:latex_engine='pdflatex'
" LanguageTools
let g:languagetool_jar='/home/sergio/Programs/LanguageTool-5.1/languagetool-commandline.jar'
let g:languagetool_lang='en-US'

" UltiSnips
let g:UltiSnipsExpandTrigger = '<nop>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsRemoveSelectModeMappings = 0

nnoremap <leader>es :UltiSnipsEdit!<cr>

" VimTeX
let g:tex_flavor = 'latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

" LaTeX Conceal
set conceallevel=2
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

"########################################################################
"#                 B U F F E R  &  L I G H T L I N E                    #
"########################################################################

set hidden  " allow buffer switching without saving
set showtabline=2  " always show tabline

" use lightline-buffer in lightline
let g:lightline = {
    \ 'colorscheme': 'mine',
    \ 'tabline': {
    \   'left': [ [ 'bufferinfo' ],
    \             [ 'separator' ],
    \             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
    \   'right': [ [ 'close' ], ],
    \ },
    \ 'component_expand': {
    \   'buffercurrent': 'lightline#buffer#buffercurrent',
    \   'bufferbefore': 'lightline#buffer#bufferbefore',
    \   'bufferafter': 'lightline#buffer#bufferafter',
    \ },
    \ 'component_type': {
    \   'buffercurrent': 'tabsel',
    \   'bufferbefore': 'raw',
    \   'bufferafter': 'raw',
    \ },
    \ 'component_function': {
    \   'bufferinfo': 'lightline#buffer#bufferinfo',
    \ },
    \ 'component': {
    \   'separator': '',
    \ },
    \ }

" lightline-buffer ui settings
" replace these symbols with ascii characters if your environment does not support unicode
let g:lightline_buffer_logo = '﬘ '
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '﯂ '
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = '  '

" enable devicons, only support utf-8
" require <https://github.com/ryanoasis/vim-devicons>
let g:lightline_buffer_enable_devicons = 1

" lightline-buffer function settings
let g:lightline_buffer_show_bufnr = 1

" :help filename-modifiers
let g:lightline_buffer_fname_mod = ':t'

" hide buffer list
let g:lightline_buffer_excludes = ['vimfiler']

" max file name length
let g:lightline_buffer_maxflen = 30

" max file extension length
let g:lightline_buffer_maxfextlen = 3

" min file name length
let g:lightline_buffer_minflen = 16

" min file extension length
let g:lightline_buffer_minfextlen = 3

" reserve length for other component (e.g. info, close)
let g:lightline_buffer_reservelen = 20
