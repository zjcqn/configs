
"设置空格键是leader
let mapleader="\<space>"

"分屏操作
"Ctrl+j将光标跳转到下方窗口
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 快速保存和退出
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

syntax on					"语法自动高亮
set cursorline				" 高亮当前行
set mouse=a					"鼠标支持
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix			"从Win上复制文件时，避免换行符错误
set hlsearch				" 搜索时高亮显示被找到的文本
set ignorecase smartcase	" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set incsearch				" 输入搜索内容时就显示搜索结果
set laststatus=2			" 显示状态栏 (默认值为 1, 无法显示状态栏)
set nocompatible			" 关闭 vi 兼容模式
set number					" 显示行号
set paste					" 解决拷贝的时遇到注释会自动注释后续所有行的问题
set ruler					" 打开状态栏标尺
set showcmd					"（在右下角）显示现有的命令
set shiftwidth=4			" 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4			" 使得按退格键时可以一次删掉 4 个空格
set smartindent				" 开启新行时使用智能自动缩进
set tabstop=4				" 设定 tab 长度为 4
set ambiwidth=double 		" 设置为双字宽显示，否则无法完整显示如:☆
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽		" 设置空白字符的视觉提示


""""Plug"""""

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"主题 :colorscheme space tab 切换主题
Plug 'dracula/vim'

"状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
	let g:airline_powerline_fonts = 1
	let g:airline_theme='deus'
	let g:Powerline_symbols='fancy'
	let Powerline_symbols='fancy'
	set t_Co=256 " 状态栏就有颜色了

"符号对齐
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'

"文件目录 命令：NERDTree
Plug 'scrooloose/nerdtree'
	"F2开启和关闭树"
	map <F2> :NERDTreeToggle<CR>


call plug#end()




