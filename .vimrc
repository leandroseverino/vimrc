syntax on         " liga a syntax na tela, colorida.
filetype on       " habilita detecção e plugins por tipo de arquivo
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My Plugins
Plugin 'gmarik/vundle'
Plugin 'klen/python-mode'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'

Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'

Plugin 'croaker/mustang-vim'
    Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

color mustang

set foldmethod=marker " Só faz fold de marcadores.
set foldlevel=3       " Nível de fold.

set nu                " Número de linhas.
set title             " Titulo do arquivo aberto.
set colorcolumn=81    " Coluna destacada.
set nocompatible      " Desativa a compatibilidade com o VI original.
set t_Co=256
set background=dark
set list listchars=tab:→\ ,trail:·

" Desabilitar o mouse:
set mouse=

" Desabilitar menus:
set guioptions-=m
set guioptions-=r
set guioptions-=T

" Desabilitar backups:
set nobackup   " Desabilita backup automatico.
set noswapfile
set nowritebackup

set autowrite   " Salva o arquivo ao trocar de abas.

" " Cores e tema:
" colorscheme slate


" Clipboard do sistema:
set clipboard=unnamed

" Tabs por espaços:
set expandtab
set shiftwidth=4  " Qtde de espaços na tab qdo ele for identar um texto sozinho.
set tabstop=4     " Qtde de espaços na tabulação
set backspace=indent,eol,start " Guarante que o bkp vai funcionar nestes casos.
set softtabstop=4
set scrolloff=5  " Numero de linhas visiveis no scroll perto do cursor.

" Indentação:
set autoindent

" Régua, quebra e número de linhas:
set linebreak
set ruler  " Mostra a posição do cursor.

" Busca:
set hlsearch  " Destaca os resultados encontrados em um comando de pesquisa.
set ignorecase
set incsearch " Vai posicionando o curso assim que a busca vai sendo digitada.

" Fonte e janela:
set guifont=consolas:h10
set encoding=utf-8   " Guarante que o arquivo vai ser salvo em utf-8
set lines=36 columns=142
set wildmenu    " Habilita um menu de autocomplete para a busca
set nowrap      " Coloca quebra visual da linha muito grande.

set showmatch " Mostra o complete de parênteses, colchetes e chaves.
set laststatus=2   " Mostra sempre a barra de status.
" Status line formatting:
" %< - Truncation point;
" %f - Relative path to file;
" %m - 'Modified' flag;
" %r - 'Readonly' flag;
" %y - Filetype;
" %= - Split point for left/right justification;
" %l - Current line number;
" %c - Current colum number;
" %L - Number of lines.
set statusline=%<%f\ %m\%r\%y%=\ [%l\,%c]\ %LL

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

iabbr pdb import pdb; pdb.set_trace()
iabbr ipython import IPython; IPython.embed()

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

map <F2> :NERDTreeToggle<CR>
