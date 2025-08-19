syntax on
syntax enable

set rnu 
set nu 
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set wrap
set smartcase
set noswapfile
set nobackup
set incsearch
set laststatus=2
set noshowmode
set sw=2
set conceallevel=2
set background=dark
set updatetime=300
set shortmess+=c

"plugin install
call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'preservim/nerdtree'
    Plug 'frazrepo/vim-rainbow'
    Plug 'lervag/vimtex'
    Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
    Plug 'SirVer/ultisnips'
    Plug 'ap/vim-css-color'
    Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()

"theme
set termguicolors
colorscheme catppuccin_mocha
let g:lightline = {'colorscheme': 'catppuccin_mocha'}

"latex settings
filetype indent on
let g:tex_conceal_frac=1 
let g:tex_conceal="abdgm"
let g:vimtex_view_sioyek_exe='/home/isomorphism/Applications/Sioyek-x86_64.AppImage'
let g:vimtex_view_method='sioyek'
let g:tex_flavor = 'latex'
let g:vimtex_complete_enabled=1
let g:vimtex_quickfix_mode=0
let g:vimtex_syntax_custom_cmds = [
          \ {'name': 'vb', 'mathmode': 1, 'argstyle': 'bold'},
          \ {'name': 'R', 'mathmode': 1, 'concealchar': 'ℝ'},
          \ {'name': 'C', 'mathmode': 1, 'concealchar': 'ℂ'},
          \ {'name': 'N', 'mathmode': 1, 'concealchar': 'ℕ'},
          \ {'name': 'Z', 'mathmode': 1, 'concealchar': 'ℤ'},
          \ {'name': 'Q', 'mathmode': 1, 'concealchar': 'ℚ'},
          \ {'name': 'a', 'mathmode': 1, 'concealchar': 'α'},
          \ {'name': 'b', 'mathmode': 1, 'concealchar': 'β'},
          \ {'name': 'g', 'mathmode': 1, 'concealchar': 'γ'},
          \ {'name': 'e', 'mathmode': 1, 'concealchar': 'ϵ'},
          \ {'name': 'p', 'mathmode': 1, 'concealchar': 'ϕ'},
          \ {'name': 'd', 'mathmode': 1, 'concealchar': 'δ'},
          \ {'name': 's', 'mathmode': 1, 'concealchar': 'σ'},
          \ {'name': 'vp', 'mathmode': 1, 'concealchar': 'φ'},
          \]
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/Figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

"snippet options
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/plugged/ultisnips"
let g:UltiSnipsSnippetDirectories="~/.vim/plugged/ultisnips"
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit="~/.vim/plugged/ultisnips"

"insert mappings
imap jh <ESC>
"normal mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :vert :term<CR>
