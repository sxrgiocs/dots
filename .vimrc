colorscheme pablo

"########################################################################
"#                       S O U R C E  F I L E S                         #
"########################################################################

source $HOME/.config/nvim/vim-plug/plugins.vim

"########################################################################
"#                             R E M A P S                              #
"########################################################################

let mapleader = " "

" Change Buffer
nnoremap <C-Left> :bprev<CR>
nnoremap <C-Right> :bnext<CR>

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
noremap <Leader>l :LLPStartPreview<CR>
noremap <Leader>mp :StartMdPreview<CR>

" Select everything
noremap <C-A> ggVG

" Compile RMarkdown
autocmd Filetype rmd map <F11> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" End and beginning of the line
nnoremap <A-Right> $
nnoremap <A-Left> 0
"#######################################################################
"#                       S E T S  &  L E T S                           #
"#######################################################################

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.rmd setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd BufRead,BufNewFile *.tex setlocal spell

" Give access to clipboard
set clipboard=unnamedplus

set signcolumn=no
set number
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

let g:livepreview_previewer = 'zathura'
let g:md_pdf_viewer='zathura'

let g:languagetool_jar='/home/sergio/Programs/LanguageTool-5.1/languagetool-commandline.jar'
let g:languagetool_lang='en-US'

" UltiSnips
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<c-b>'
let g:UltiSnipsJumpBackwardTrigger     = '<c-z>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:UltiSnipsSnippetDirectories = ['/home/sergio/.config/nvim/UltiSnips']

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-t>"

" VimTeX
let g:tex_flavor = 'latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

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
