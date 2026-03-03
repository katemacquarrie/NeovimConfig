call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-dispatch'

call plug#end()

filetype plugin on

" UltiSnips
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/UltiSnips']

" Spell only for tex
autocmd FileType tex setlocal spell spelllang=en_gb

" Fix previous spelling mistake quickly
inoremap <C-l> <c-g>u<Esc>[sa<c-g>u
noremap <C-h> 1z=
inoremap <C-h> <Esc>1z=a

" Add word to dictionary
nnoremap <C-g> zg
inoremap <C-g> <Esc>zga

" Configuring Zathura
let g:vimtex_view_method = 'zathura'

" Saving and compiling
nnoremap <C-a> :w<CR>:VimtexCompile<CR>
inoremap <C-a> <Esc>:w<CR>:VimtexCompile<CR>a

" Vim viewer conig
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Line config
set nu
set ai
set tabstop=4
set ls=2
set shiftwidth=4
