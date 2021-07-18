"==============================================================================
" vim 内置配置
"==============================================================================
" 设置 vimrc 修改保存后立刻生效，不用在重新打开, 建议配置完成后将这个关闭，否则配置多了之后会很卡
" 或者配置好后执行source ~/.vimrc, 也可以使新配置即时生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC


" 启用backspace

set backspace=indent,eol,start


" 设置行号

set nu


"突出显示当前行

set cursorline


" 突出显示当前列

" set cursorcolumn


" 显示括号匹配

set showmatch


" tab 缩进, 设置Tab长度为4空格 或者 set ts=4
set tabstop=4


" 设置自动缩进长度为4空格

"set shiftwidth=4


" 将tab转成space
set expandtab


" 继承前一行的缩进方式，适用于多行注释

set autoindent


" 显示特殊符号

set list
set listchars=tab:›\ ,trail:•,extends:>,precedes:<,nbsp:.


" 关闭vim提示音和闪烁提示
set vb t_vb=


" 定义快捷键的前缀，即<Leader>
let mapleader=";"


" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板

vmap <Leader>c "+yy


" n 模式下复制一行到系统剪切板

nmap <Leader>c "+yy


" n 模式下粘贴系统剪切板的内容

nmap <Leader>v "+p


" 开启实时搜索

set incsearch

" 开启搜索所有匹配内容高亮

set hlsearch

" 搜索时大小写不敏感

set ignorecase


" 开启文件类型侦测

syntax enable


" 开启高亮

syntax on


" 启用自动补全

filetype plugin indent on


" 退出插入模式指定类型的文件自动保存

au InsertLeave *.go,*.sh,*.php,*.js,*.sol,*.txt,*.md write


" 文件编码格式

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


" 设置自动换行

set wrap


" 开启折叠

set foldmethod=indent


" 设置折叠级别 用于取消打开就折叠

set foldlevelstart=99


" 开启语法检查

" set spell


" 关闭语法检查

set nospell


" buffer间切换

" 打印buffer的列表

" l开头, 影响l按键的相应速度
" 不建议使用h j k l开头的快捷键

"nmap ls     :ls<CR>

" buffe中下一个r文件

nmap bn     :bn<CR>

" buffe中上一个r文件

nmap bp     :bp<CR>


" 标签页操作快捷键

nmap nex    :tabnext<CR>
nmap pre    :tabprevious<CR>
nmap new    :tabnew<CR>

" ESC 可用ctrl + c代替，vim默认配置中已有
" ESC 使用kl替换
"inoremap kl <ESC>:w<CR>
"inoremap gs <ESC>:w<CR>
"noremap gs :w<CR>

" 保存快捷键

map <leader>s :w<CR>
inoremap <leader>s <ESC>:w<CR>

map <leader>l :w!<CR>
inoremap <leader>l <ESC>:w!<CR>

map <leader>sa :w!<CR>

map <D>s :w!<CR>

imap Ctrl-s <ESC>:w!<CR>i
map Ctrl-s :w!<CR>

" 保存 使用hj替换
"inoremap hj <ESC>:w<CR>
"noremap hj :w<CR>


" 折叠方式, 用语法高亮来定义折叠
" manual          手工定义折叠
" indent          更多的缩进表示更高级别的折叠
" expr            用表达式来定义折叠
" syntax          用语法高亮来定义折叠
" diff            对没有更改的文本进行折叠
" marker          对文中的标志折叠

set fdm=syntax


" 保存快捷键

nmap fs :w!<CR>

" control + s 被系统快捷键占用，无法在vim配置文件中使用

" nmap <c-s> :w!<CR>
" vmap <C-S> <C-C>:w!<CR>
" nmap <C-S> :w!<CR>i


" 启用鼠标

set mouse=a

" 在当前文件中快速查找光标下的单词, 要了解详细信息，":help :lvimgrep"及":help :lgrep"

nmap <leader>lv :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr>

" 光标跨窗口移动 左移 右移 上移 下移
nmap <leader>a <c-w>h
nmap <leader>d <c-w>l
nmap <leader>w <c-w>k
nmap <leader>s <c-w>j


" for coding
nmap make   :make<CR>
nmap cw     :cw<CR>
nmap qu     :cw<CR>

" for run js
"nmap rr     :!node %<CR>

nmap <Leader>r :!node %<CR>


" for fun go
"nmap gr     :!go run %<CR>

nmap <Leader>g :!go run %<CR>


" 设置默认保存目录

" exec 'cd ' . fnameescape("$HOME/workspace")

" ml对xml格式化 需要安装libxml2, 或者在终端使用命令xmllint –format xxx.xml进行格式化

nmap ml :%!xmllint --format --encode UTF-8 -<cr>



"==============================================================================
" 插件配置
"==============================================================================

" 插件开始的位置
"call plug#begin('~/.vim/plugged')


" be iMproved, required

set nocompatible

" required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" 基础插件


" 插件管理工具

Plugin 'VundleVim/Vundle.vim'


" 启动界面插件

Plugin 'mhinz/vim-startify'

" Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'

" airline 插件配置
" 永远显示airlin状态栏

set laststatus=2

" 在windows中用xshell连接打开vim可以显示色彩

set t_Co=256

" 状态栏主题

"let g:airline_theme='luna'
" 启用bufferline
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" 行号显示插件,在编辑模式下显示绝对行号,在非编辑模式下显示相对行号
Plugin 'myusuf3/numbers.vim'

let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']

"let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m']

" 打开和关闭相对行号
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" 表格化
" :Tabularize /| 即以'|'字符为基准进行表格化对齐,  在markdown文件中编辑表格时非常有用

"Plugin 'godlygeek/tabular'

" 文件夹管理插件

Plugin 'scrooloose/nerdtree'

" NERDTree 插件配置
" 打开和关闭NERDTree快捷键

map <F10> :NERDTreeToggle<CR>
nmap tr :NERDTreeToggle<cr>

" 显示行号

let NERDTreeShowLineNumbers=1

" 打开文件时是否显示目录

let NERDTreeAutoCenter=0

" 是否显示隐藏文件

let NERDTreeShowHidden=1

" 设置宽度
" let NERDTreeWinSize=31
" 忽略一下文件的显示

let NERDTreeIgnore=['\.pyc','\~$','\.swp']

" 打开 vim 文件及显示书签列表

let NERDTreeShowBookmarks=2

" 在终端启动vim时，共享NERDTree

let g:nerdtree_tabs_open_on_console_startup=1

" 自动打开NERDTree
" let NERDTreeQuitOnOpen=0
" NERDTree 宽度
" let NERDTreeWinSize=40


" 文件查找 内容查找插件

Plugin 'kien/ctrlp.vim'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" have a problem with it
" command-t.vim could not load the C extension.
"Please see INSTALLATION and TROUBLE-SHOOTING in the help.
"Vim Ruby version: 3.0.2-p107
"Expected version: 2.6.3-p62
"For more information type:    :help command-t

" 问题出现原因: vim依赖ruby和coommand-t依赖版本不一致
" 解决办法: 依照doc安装步骤进行安装, 保持同一个版本的ruby
" ruby -v 查看ruby版本, 如果和vim依赖不同, 则进行卸载, 并清理.zshrc中环境变量设置
" brew install ruby
" brew uninstall ruby@2.7
" brew uninstall ruby@2.6
" source ~/.bash_profile
" cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t
" ruby extconf.rb &&  make

Plugin 'wincent/command-t'



" 文件内快速定位插件
" 跳到某一个位置: <leader><leader> w, <leader><leader> e
" 跳到输入的指定字符的某一个位置: <leader><leader> f

Plugin 'easymotion/vim-easymotion'



" 玩具插件 黑客帝国屏幕字符流效果
"Plugin 'matrix.vim--Yang'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" 可以快速对齐的插件
"Plugin 'junegunn/vim-easy-align'



" 可以使 nerdtree Tab 标签的名称更友好些
"Plugin 'jistr/vim-nerdtree-tabs'



" 可以在导航目录中看到 git 版本信息
Plugin 'Xuyuanp/nerdtree-git-plugin'

" nerdtree-git-plugin 插件
" let g:NERDTreeIndicatorMapCustom = {
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeGitStatusShowIgnored = 1




" 查看当前代码文件中的变量和函数列表的插件，
" 可以切换和跳转到代码中对应的变量和函数的位置
" 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持

Plugin 'majutsushi/tagbar'

" tagbar 插件插件
" majutsushi/tagbar 插件打开关闭快捷键

nmap <F9> :TagbarToggle<CR>
nmap ta :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }



" 自动补全括号的插件，包括小括号，中括号，以及花括号, 引号, 单引号等成对字符
Plugin 'jiangmiao/auto-pairs'

" 括号成对替换 "", '',
" "Hello world!"
" 使用命令cs"' 则替换为'Hello world!'
" 使用命令cs'<p>则替换为<p>Hello world!<p>
" Plugin 'tpope/vim-surround'

Plugin 'nathanaelkane/vim-indent-guides'

" indent line guide 插件

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 1





" 有道词典在线翻译
"Plugin 'ianva/vim-youdao-translater'




"===================================================================
" 代码补全插件
" 自动补全: ycm-core/YouCompleteMe
" 代码段补全: SirVer/ultisnips
" 代码段仓库: honza/vim-snippets, 需要配合ultisnips使用,
" 此仓库可以fork一份到自己github中, 方便增加自定义代码段

" 代码自动完成，安装完插件还需要额外配置才可以使用
" 如果使用了ultisnips代码段插件, 还需要处理tab键的冲突问题
" 需要额外安装步骤：
" mac:
"   brew install cmake node; cd YouCompleteMe; ./install.py --all
" ubuntu:
"   sudo apt install cmake; curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
"   apt-get install -y nodejs; ./install.py --all
"
"===================================================================

" 自动补全

Plugin 'ycm-core/YouCompleteMe'

" 代码段补全

Plugin 'SirVer/ultisnips'

" 代码段仓库
Plugin 'pengjichenorg/vim-snippets'


" 处理youcomplete和ultisnips对于tab键的冲突的问题
" 如果有snips，直接按tab键就可以完成添加
" tab键往下走，shfit+tab键往上走

    function! g:UltiSnips_Complete()
      call UltiSnips#ExpandSnippet()
      if g:ulti_expand_res == 0
        if pumvisible()
          return "\<C-n>"
        else
          call UltiSnips#JumpForwards()
          if g:ulti_jump_forwards_res == 0
            return "\<TAB>"
          endif
        endif
      endif
      return ""
    endfunction

    function! g:UltiSnips_Reverse()
      call UltiSnips#JumpBackwards()
      if g:ulti_jump_backwards_res == 0
        return "\<C-P>"
      endif

      return ""
    endfunction


    if !exists("g:UltiSnipsJumpForwardTrigger")
      let g:UltiSnipsJumpForwardTrigger = "<tab>"
    endif
    if !exists("g:UltiSnipsJumpBackwardTrigger")
      let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
    endif

    au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
    au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"



" 可以在文档中显示 git 信息

Plugin 'airblade/vim-gitgutter'


" git tool
" 整合git命令, 避免使用!git xxx命令先弹回terminal再返回vim过程

Plugin 'tpope/vim-fugitive'


" 下面两个插件要配合使用，可以自动生成代码块



" 配色方案
" colorscheme neodark
"Plugin 'KeitaNakamura/neodark.vim'

" vim 主题配色 one monokai solarized

Plugin 'rakr/vim-one'
Plugin 'crusoexia/vim-monokai'
Plugin 'altercation/vim-colors-solarized'

" colorscheme github

Plugin 'acarapetis/vim-colors-github'

" 主题配色设置
" 开启24bit的颜色，开启这个颜色会更漂亮一些

set termguicolors

" 配色方案, 可以从上面插件安装中的选择一个使用
" 主题 one, 或者solarized、monokai
" 主题背景 dark-深色; light-浅色

set background=dark
set t_Co=256
colorscheme monokai
let g:solarized_termcolors=256


" ack全局搜索插件 需要ag工具 安装如下
" brew install the_silver_searcher
" sudo apt install silversearcher-ag

Plugin 'mileszs/ack.vim'

" ack 快捷键
nmap ag     :Ack



" go 主要插件

Plugin 'fatih/vim-go', { 'tag': '*' }

" go 中的代码追踪，输入 gd 就可以自动跳转

Plugin 'dgryski/vim-godef'

" go 中代码提示

Plugin 'nsf/gocode', {'rtp': 'vim/'}


" vim-go 插件配置
" 格式化将默认的 gofmt 替换

"let g:go_fmt_command = "goimports"
"let g:go_fmt_command = "gofmt"

let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2



" markdown 插件

Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'

" markdwon 的快捷键
"map <silent> <F5> <Plugin>MarkdownPreview
"map <silent> <F6> <Plugin>StopMarkdownPreview

map exp   :MarkdownPreview<CR>
map ext   :StopMarkdownPreview<CR>

" markdown预览配置
" https://github.com/suan/vim-instant-markdown
" start command: InstantMarkdownPreview InstantMarkdownStop
" stop command: InstantMarkdownStop

" 关闭自动打开预览
"let g:instant_markdown_autostart = 0

" 设置预览快捷键exp
"map exp     :InstantMarkdownPreview<CR>



" c/c++插件

"Plugin 'a.vim'                              " 头文件和源文件切换
"Plugin 'octol/vim-cpp-enhanced-highlight'   " 自定义类型 变量的语法高亮

" c/c++插件配置

"let g:cpp_class_scope_highlight = 1                    " 突出显示类作用于
"let g:cpp_member_variable_highlight = 1                " 成员变量突出显示
"let g:cpp_class_decl_gighlight = 1                     " 在声明中高亮显示类名
"let g:cpp_posix_standard = 1                           " POSIX功能的高亮显示
"let g:cpp_experimental_simple_template_highlight = 1   " 模板功能突出显示
"let g:cpp_experimental_template_highlight = 1          "文件较大时使用高亮模板速度较快，但会有一些小错误
"let g:cpp_concepts_highlight = 1                       " 库概念突出显示



" 代码注释插件 可快速注释多行代码
"

Plugin 'preservim/nerdcommenter'

" Create default mappings

let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default

let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments

let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation

let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default

let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults

let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)

let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting

let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not

let g:NERDToggleCheckAllLines = 1


" solidity 插件

Plugin 'tomlion/vim-solidity'

" 语法检查器，需要配合solidity语法检查器一块使用 npm install -g solhint

Plugin 'vim-syntastic/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" 语法检查

Plugin 'sohkai/syntastic-local-solhint'


" solidity 插件

let g:syntastic_solidity_checkers = ['solhint']


" EasyDebugger 插件 调试js go python

Plugin 'jayli/vim-easydebugger'


" 调试插件
" Vim-EasyDebugger 快捷键配置

" 启动 NodeJS/Python/Go 调试

nmap <S-R>  <Plug>EasyDebuggerInspect

" 启动 NodeJS 的 Web 调试模式

nmap <S-W>  <Plug>EasyDebuggerWebInspect

" 关闭调试

nmap <S-E>  <Plug>EasyDebuggerExit

" 暂停程序

nmap <F6>   <Plug>EasyDebuggerPause
tmap <F6>   <Plug>EasyDebuggerPause

" 跳出函数

nmap <F7>   <Plug>EasyDebuggerStepOut

tmap <F7>   <Plug>EasyDebuggerStepOut

" 进入函数

nmap <F8>   <Plug>EasyDebuggerStepIn

tmap <F8>   <Plug>EasyDebuggerStepIn

" 单步执行

nmap <F9>   <Plug>EasyDebuggerNext

tmap <F9>   <Plug>EasyDebuggerNext

" Continue

nmap <F10>  <Plug>EasyDebuggerContinue
tmap <F10>  <Plug>EasyDebuggerContinue

" 设置断点

nmap <F12>  <Plug>EasyDebuggerSetBreakPoint




" 自动ctags
Plugin 'ludovicchabant/vim-gutentags'

" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "

let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "

let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "

let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 检测 ~/.cache/tags 不存在就新建 "

if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif



call vundle#end()            " required
filetype plugin indent on    " required



"==============================================================================
"  其他插件配置
"==============================================================================

" tab 标签页切换快捷键
:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
:nn <Leader>7 7gt
:nn <Leader>8 8gt
:nn <Leader>9 8gt
:nn <Leader>0 :tablast<CR>


"==============================================================================
" ctags 插件
"==============================================================================

" set tags=tags
" set tags+=./tags                            " 表示在当前工作目录下搜索tags文件
" set tags+=/Users/user/lib/tags               " 三方库和系统库路径 自定义路径
map tags :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nmap ts     :<ESC>g<C-]>


"\ 'ctagsbin' : '/Users/pjc/.vim/bundle/markdown2ctags/markdown2ctags.py',
" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '/Users/pjc/.vim/bundle/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes --sro=»',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '»',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }



" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']


" ==============================================================================
" GVim 的配置
"==============================================================================
" 如果不使用 GVim ，可以不用配置下面的配置
if has('gui_running')
        colorscheme one
    " 设置启动时窗口的大小
    set lines=999 columns=999 linespace=4

    " 设置字体及大小
        set guifont=Roboto\ Mono\ 13

    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
            " 在 gvim 下不会和 terminal 的 alt+数字的快捷键冲突，
    " 所以将 tab 切换配置一份 alt+数字的快捷键
    :nn <M-1> 1gt
    :nn <M-2> 2gt
    :nn <M-3> 3gt
    :nn <M-4> 4gt
    :nn <M-5> 5gt
    :nn <M-6> 6gt
    :nn <M-7> 7gt
    :nn <M-8> 8gt
        :nn <M-9> 9gt
        :nn <M-0> :tablast<CR>
endif



