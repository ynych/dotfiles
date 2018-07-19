" 设置文件编码
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
" set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8
endif

if $VIM_CRONTAB == "true"

	au BufEnter /private/tmp/crontab.* setl backupcopy=yes
    autocmd filetype crontab setlocal nobackup nowritebackup
endif

" configure Vundle
filetype on " without this vim emits a zero exit status, later, because of :ft off
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" install Vundle bundles
if filereadable(expand("~/env/vim/.vimrc.bundles"))
    source ~/env/vim/.vimrc.bundles
endif

" install Vundle bundles
if filereadable(expand("~/env/vim/.vimrc.autocomplete"))
   source ~/env/vim/.vimrc.autocomplete
endif

if filereadable(expand("~/env/vim/.vimrc.python"))
    source ~/env/vim/.vimrc.python
endif


au BufRead,BufNewFile *.go set filetype=go

" 通用
syntax enable               " 打开语法高亮
filetype plugin indent on
set tabstop=4               " 设置tab键的宽度
set expandtab 
set autoindent              " 自动缩进
set cindent
set softtabstop=4           " 统一缩进为4
set shiftwidth=4
set paste                   " paste模式
" set wrap                  " 自动换行
set nu!                     " 显示行号
set autoread                " 自动载入
set autowrite
set ruler                   " 打开状态栏标尺
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2            " 总是显示状态行
set showcmd                 " 输入的命令显示出来，看的清楚些  
set scrolloff=3             " 光标移动到buffer的顶部和底部时保持3行距离  
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
set foldmethod=indent       " 开启代码折叠功能

" 搜索
set hlsearch                " 高亮显示搜索结果
set ignorecase              " 搜索时忽略大小写
set smartcase               " 如果用大写搜索则只匹配大写
set incsearch               " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到

autocmd InsertLeave * se nocul          " 用浅色高亮当前行  
autocmd InsertEnter * se cul            " 用浅色高亮当前行  

" gg=G to format xml
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
" shellcheck
" execute pathogen#infect()

vmap <silent>sf        <Plug>SQLU_Formatter<CR> 
nmap <silent>scl       <Plug>SQLU_CreateColumnList<CR> 
nmap <silent>scd       <Plug>SQLU_GetColumnDef<CR> 
nmap <silent>scdt      <Plug>SQLU_GetColumnDataType<CR> 
nmap <silent>scp       <Plug>SQLU_CreateProcedure<CR> 

