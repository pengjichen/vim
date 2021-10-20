"===============================================================================
" vim 内置配置
" 配置好后执行:source ~/.vimrc, 或者:source % 使新配置即时生效
"===============================================================================

"=======================================
" 未启用配置

" 自动刷新配置, 建议配置完成后将这个关闭，否则配置多了之后会很卡

" autocmd BufWritePost $MYVIMRC source $MYVIMRC


" 突出显示当前列

" set cursorcolumn


" 设置自动缩进长度为4空格

set shiftwidth=4


" 启用自动补全

"filetype plugin indent on


" 开启语法检查

" set spell


" 关闭语法检查

"set nospell


"=======================================

" 开启文件类型侦测

syntax enable


" 开启高亮

syntax on



" 文件编码格式

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8



" 启用backspace, 可以使用backspace进行删除操作

set backspace=indent,eol,start


" 设置行号

set nu


"突出显示当前行

set cursorline


" 显示括号匹配

set showmatch


" tab 缩进, 设置Tab长度为4空格 或者 set ts=4

set tabstop=4


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

" 智能搜索模式
" 当 ignorecase 和 smartcase 选项均打开时,
" 只要你的搜索模式中包含大写字母,
" 那Vim会认为你当前的搜索是区分大小写的，
" 如果搜索模式中不包含任何大写字母，Vim则会认为搜索应该不区分大小写。
" 这是个比较”智能的”推测你搜索意图的机制。

set smartcase

" 假设光标当前所有单词为the，那么在当前光标位置执行命令 * 相当于搜索命令 /\<the\>，命令 # 等同于命令 ?\<the\>。\< 是一个单词定界符，表示只匹配单词的开头，\> 也是单词定界符，表示只匹配单词末尾

" 如果想搜索当前光标所在位置的单词，可以先输入 / 进入搜索模式，然后依次输入命令 <Ctrl-r><Ctrl-w> 来复制光标下的单词并将其插入命令行中。

" noh 消除此次搜索高亮


" 退出插入模式指定类型的文件自动保存

au InsertLeave *.go,*.sh,*.php,*.js,*.sol,*.txt,*.md write


" 设置自动换行

"set wrap


" 开启折叠

set foldmethod=indent

" 折叠方式, 用语法高亮来定义折叠
" manual          手工定义折叠
" indent          更多的缩进表示更高级别的折叠
" expr            用表达式来定义折叠
" syntax          用语法高亮来定义折叠
" diff            对没有更改的文本进行折叠
" marker          对文中的标志折叠

set fdm=syntax


" 设置折叠级别 用于取消打开就折叠

set foldlevelstart=99

" 启用鼠标

set mouse=a


"=======================================
" 自定义快捷键
" h j k l 开头, 会影响按键的相应速度, 不建议用使用频率高的按键做快捷键的开头


" ESC 可用ctrl + c代替，vim默认配置中已有


" control + s 被系统快捷键占用，无法在vim配置文件中使用

" nmap <c-s> :w!<CR>
" vmap <C-S> <C-C>:w!<CR>
" nmap <C-S> :w!<CR>i

"=======================================

" 向下拖动滑块, 屏幕内容

nmap <c-k> <c-y>

" 向下拖动滑块, 屏幕内容

nmap <c-j> <c-e>


" 内置terminal打开与关闭 打开;Enter 关闭esc
map ;<CR> :bo term<CR>
tnoremap <ESC> <c-\><c-n>:q!<CR>

" buffer间切换

" 打印buffer的列表

nmap bls     :ls<CR>

" buffe中下一个r文件

nmap bn     :bn<CR>

" buffe中上一个r文件

nmap bp     :bp<CR>


" 标签页操作快捷键

nmap nex    :tabnext<CR>
nmap pre    :tabprevious<CR>
nmap new    :tabnew<CR>


" 保存快捷键
" <leader>s, <leader>l, <leader>sa, command s, ctrl s, fs

map <leader>s :w<CR>
inoremap <leader>s <ESC>:w<CR>

map <leader>l :w!<CR>
inoremap <leader>l <ESC>:w!<CR>

map <leader>sa :w!<CR>

map <D>s :w!<CR>

imap Ctrl-s <ESC>:w!<CR>i
map Ctrl-s :w!<CR>

nmap fs :w!<CR>


" 文件内查找
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

nmap <Leader>r :!node %<CR>


" for fun go

nmap <Leader>g :!go run %<CR>


" 设置默认保存目录

" exec 'cd ' . fnameescape("$HOME/workspace")

" ml对xml格式化 需要安装libxml2, 或者在终端使用命令xmllint –format xxx.xml进行格式dfasdfasdfsdfsadfsafassfdsafasdf

nmap ml :%!xmllint --format --encode UTF-8 -<cr>


" vim diff 内置快捷键

" diff时
" ]c    " 跳转到下一处不同的地方
" [c    " 跳转到上一处不同的地方

" diff put 文件差异内容覆盖
" dp     " 将当前差异内容覆盖到另一个文件对应位置
" do     " 将另一个文件中的差异内容拉取到当前文件对应位置并覆盖

" merge时
" :diffg RE  " get from REMOTE
" :diffg BA  " get from BASE
" :diffg LO  " get from LOCAL


" 新建上方窗口, 在窗口中打开内置terminal

nmap term   :term<CR>

" 新建左侧窗口, 在窗口中打开内置terminal

nmap termvs   :bel vertical term<CR>


" 添加空白行

nmap <CR> o<Esc>

" 状态栏
set laststatus=2      " 总是显示状态栏
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
" 获取当前路径，将$HOME转化为~
function! CurDir()
        let curdir = substitute(getcwd(), $HOME, "~", "g")
        return curdir
endfunction
set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\

" 或以下两句
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] "显示文件名：总行数，总的字符数
"set ruler "在编辑过程中，在右下角显示光标位置的状态行


"===============================================================================
" 插件配置
"===============================================================================

"=======================================
" 基础插件
" airline
" bufferline
" nerdtree
" tagbar
" airblade/vim-gitgutter
"=======================================

"===================
" 插件管理器: VundleVim/Vundle.vim
" 插件开始的位置
"call plug#begin('~/.vim/plugged')
" be iMproved, required
"===================

" required

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 插件管理器

Plugin 'VundleVim/Vundle.vim'


"===================
" 状态栏插件: vim-airline/vim-airline
" 状态栏配色库: vim-airline/vim-airline-themes
" 美化状态栏显示行号，列号，文件类型，文件名，以及Git状态
" airline themes:
" simple, luna
" 配色预览命令: :AirlineTheme xx
" 配色预览地址https://github.com/vim-airline/vim-airline/wiki/Screenshots
"===================

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

    " airline 插件配置
    " 永远显示airlin状态栏

    set laststatus=2

    " 在windows中用xshell连接打开vim可以显示色彩

    set t_Co=256

    " 状态栏主题

    let g:airline_theme='simple' "'luna'

    " 启用bufferline

    let g:airline#extensions#bufferline#enabled = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#formatter = 'default'



"===================
" buffer列表显示插件: bling/vim-bufferline
" 用于美化buffer列表的显示
"===================

Plugin 'bling/vim-bufferline'


"===================
" 配色方案
" 配色下载后需要拷贝到.vim/colors文件下
" vim 常用主题配色 one monokai solarized
" colorscheme github: acarapetis/vim-colors-github
"===================

Plugin 'rakr/vim-one'
Plugin 'crusoexia/vim-monokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'acarapetis/vim-colors-github'

    " 开启24bit的颜色，开启这个颜色会更漂亮一些

    set termguicolors
    set background=dark
    set t_Co=256
    colorscheme monokai
    let g:solarized_termcolors=256


"===================
" 文件夹管理插件: scrooloose/nerdtree
"===================

Plugin 'scrooloose/nerdtree'

    " NERDTree 插件配置

    " 打开和关闭NERDTree快捷键

    nmap tr :NERDTreeToggle<cr>

    " 显示行号

    let NERDTreeShowLineNumbtrs=1

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


"===================
" 大纲插件: majutsushi/tagbar
" 查看当前代码文件中的变量和函数列表的插件，
" 可以切换和跳转到代码中对应的变量和函数的位置
" 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
"===================

Plugin 'majutsushi/tagbar'

    nmap ta :TagbarToggle<CR>

"===================
" 缩进显示: nathanaelkane/vim-indent-guides
"===================

Plugin 'nathanaelkane/vim-indent-guides'

    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_start_level=2
    let g:indent_guides_guide_size=1
    let g:indent_guides_auto_colors = 1


"=======================================
" 文件搜索 文件内容搜索插件
"=======================================

"===================
" 文件查找插件: kien/ctrlp.vim
"===================

Plugin 'kien/ctrlp.vim'

    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'


"===================
" 文件查找插件: command-t

" 安装时的ruby版本问题:
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
"===================

Plugin 'wincent/command-t'


"===================
" 文件内快速定位插件: easymotion/vim-easymotion
" 跳到某一个位置: <leader><leader> w, <leader><leader> e
" 跳到输入的指定字符的某一个位置: <leader><leader> f
"===================

Plugin 'easymotion/vim-easymotion'


"===================
" ack全局搜索插件: mileszs/ack.vim
" 需要ag工具 安装如下:
" brew install the_silver_searcher
" sudo apt install silversearcher-ag
"===================

Plugin 'mileszs/ack.vim'

    " 使用ag作为搜索工具

    if executable('ag')
        let g:ackprg = 'ag --vimgrep'
    endif

    " 防止自动跳转到第一个搜索结果
    cnoreabbrev Ack Ack!

    " 由于<leader>a 已被用于窗口切换, 所以使用<ldader>c作为ack快捷键

    nnoremap <Leader>c :Ack!<Space>

    " ack 快捷键
    nmap ag     :Ack

    "高亮搜索关键词

    let g:ackhighlight = 1

    "修改快速预览窗口高度为15

    let g:ack_qhandler = "botright copen 15"

    "在QuickFix窗口使用快捷键以后，自动关闭QuickFix窗口

    let g:ack_autoclose = 1

    "使用ack的空白搜索，即不添加任何参数时对光标下的单词进行搜索，默认值为1，表示开启，置0以后使用空白搜索将返回错误信息

    let g:ack_use_cword_for_empty_search = 1

    let g:ackprg = 'ag --nogroup --nocolor --column'

    "部分功能受限，但对于大项目搜索速度较慢时可以尝试开启

    "let g:ack_use_dispatch = 1



"===================
" QuickFix窗口快捷键
"===================
"
" ?     显示键盘映射
" o     打开文件
" O     打开文件关闭QuickFix窗口
" go    预览文件，但焦点留在ack搜索结果上
" t     在新标签页打开文件
" T     在新标签页打开但不切换到那个标签页
" h     分屏打开
" H     分屏打开，但焦点停留在ack搜索结果上
" v     竖直分屏打开
" gv    竖直分屏打开，但焦点停留在ack搜索结果上
" q     关闭QuickFix窗口


"=======================================
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
"=======================================

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


    " 默认youcomplateme黑名单里有markdown,
    " 需要移除黑名单才能在markdown里提示候选项
    " https://stackoverflow.com/questions/24720587/vim-with-youcompleteme-and-markdown
    let g:ycm_filetype_blacklist = {}


"=======================================
" git插件
"=======================================

"===================
" nerdtree拓展插件: Xuyuanp/nerdtree-git-plugin
" 可以在导航目录中看到 git 版本信息
"===================

Plugin 'Xuyuanp/nerdtree-git-plugin'

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


"===================
" git信息显示: airblade/vim-gitgutter
"===================

Plugin 'airblade/vim-gitgutter'


"===================
" 内置git tool: tpope/vim-fugitive
" 整合git命令, 避免使用!git xxx命令先弹回terminal再返回vim过程
"===================

Plugin 'tpope/vim-fugitive'


"=======================================
" markdown插件
"=======================================

"===================
" markdown 插件

" markdown预览配置
" https://github.com/suan/vim-instant-markdown
" start command: InstantMarkdownPreview InstantMarkdownStop
" stop command: InstantMarkdownStop
" 依赖: npm -g install instant-markdown-d@next

"Plugin 'instant-markdown/vim-instant-markdown'
"
"    let g:instant_markdown_slow = 1
"    let g:instant_markdown_autostart = 1
"    let g:instant_markdown_open_to_the_world = 1
"    let g:instant_markdown_allow_unsafe_content = 1
"    let g:instant_markdown_allow_external_content = 0
"    let g:instant_markdown_mathjax = 1
"    let g:instant_markdown_mermaid = 1
"    let g:instant_markdown_logfile = '~/.tmp/instant_markdown.log'
"    let g:instant_markdown_autoscroll = 1
"    let g:instant_markdown_port = 8888
"    let g:instant_markdown_python = 1
"
"    map exp     :InstantMarkdownPreview<CR>

"===================

Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'


    map exp   :MarkdownPreview<CR>
    map ext   :StopMarkdownPreview<CR>


"===================
" 表格化对齐插件
" :Tabularize /| 即以'|'字符为基准进行表格化对齐
" 在markdown文件中编辑表格时非常有用
"===================

Plugin 'godlygeek/tabular'


"===================
" markdown tagrbar: jszakmeister/markdown2ctags
"===================

Plugin 'jszakmeister/markdown2ctags'

    " Add support for markdown files in tagbar.

    let g:tagbar_type_markdown = {
        \ 'ctagstype': 'markdown',
        \ 'ctagsbin' : '~/.vim/bundle/markdown2ctags/markdown2ctags.py',
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


"=======================================
" 编程语言插件
"=======================================

"===================
" 代码注释插件 可快速注释多行代码
"===================

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


"===================
" c/c++插件

" 头文件和源文件切换

"Plugin 'a.vim'

" 自定义类型 变量的语法高亮

"Plugin 'octol/vim-cpp-enhanced-highlight'

    " c/c++插件配置

    " 突出显示类作用于

    "let g:cpp_class_scope_highlight = 1

    " 成员变量突出显示

    "let g:cpp_member_variable_highlight = 1

    " 在声明中高亮显示类名

    "let g:cpp_class_decl_gighlight = 1

    " POSIX功能的高亮显示

    "let g:cpp_posix_standard = 1

    " 模板功能突出显示

    "let g:cpp_experimental_simple_template_highlight = 1

    "文件较大时使用高亮模板速度较快，但会有一些小错误

    "let g:cpp_experimental_template_highlight = 1

    " 库概念突出显示

    "let g:cpp_concepts_highlight = 1
"===================


"===================
" go 主要插件: fatih/vim-go
" go 中的代码追踪，输入 gd 就可以自动跳转: dgryski/vim-godef'
" go 中代码提示: nsf/gocode
"===================

Plugin 'fatih/vim-go', { 'tag': '*' }
Plugin 'dgryski/vim-godef'
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

    " tagbar for go

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


"===================
" solidity插件: tomlion/vim-solidity
"===================

Plugin 'tomlion/vim-solidity'

"===================
" 语法检查器，需要配合solidity语法检查器一块使用 npm install -g solhint
"===================

Plugin 'vim-syntastic/syntastic'

    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    " 设置solidity语法检查器

    let g:syntastic_solidity_checkers = ['solhint']


"===================
" 语法检查
"===================

Plugin 'sohkai/syntastic-local-solhint'


"===================
" EasyDebugger 插件 调试js go python
"===================

Plugin 'jayli/vim-easydebugger'


"===================
" 调试插件
" Vim-EasyDebugger 快捷键配置
"===================

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


"=======================================
" 其他实用优化工具
"=======================================

"===================
" 启动界面插件: mhinz/vim-startify
" 可以显示近期使用的文件
" mac下无法显示近期使用的问题件的问题尚未解决
"===================

Plugin 'mhinz/vim-startify'


"===================
" 行号显示插件: myusuf3/numbers.vim
" 在编辑模式下显示绝对行号,在非编辑模式下显示相对行号
" 使用ctrl+j快速滚动屏幕内容时会卡顿
"===================

"Plugin 'myusuf3/numbers.vim'
"
"    " 不显示相对行号的面板
"
"    let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']
"
"    " 打开和关闭相对行号
"
"    nnoremap <F3> :NumbersToggle<CR>
"    nnoremap <F4> :NumbersOnOff<CR>
"
"        ""let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m']


"===================
" 玩具插件: matrix.vim--Yang
" 黑客帝国屏幕字符流效果
"===================

Plugin 'matrix.vim--Yang'


" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" 可以快速对齐的插件
"Plugin 'junegunn/vim-easy-align'


" 可以使 nerdtree Tab 标签的名称更友好些
"Plugin 'jistr/vim-nerdtree-tabs'


"===================
" 自动补全括号的插件: jiangmiao/auto-pairs
" 包括小括号，中括号，以及花括号, 引号, 单引号等成对字符
"===================

Plugin 'jiangmiao/auto-pairs'


"===================
" 括号成对替换插件: tpope/vim-surround
" 如 "", ''
" "Hello world!"
" 使用命令cs"' 则替换为'Hello world!'
" 使用命令cs'<p>则替换为<p>Hello world!<p>
"===================

" Plugin 'tpope/vim-surround'



"===================
" 有道词典在线翻译
"Plugin 'ianva/vim-youdao-translater'
"===================


"=======================================
" ctags配置
"=======================================

    " set tags=tags
    " 在当前工作目录下搜索tags文件, 三方库和系统库路径 自定义路径
    " set tags+=./tags
    " set tags+=/Users/user/lib/tags

    map tags :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
    nmap ts     :<ESC>g<C-]>


"===================
" 自动ctags
"===================

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

    " 配置 ctags 的参数 "

    let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
    let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
    let g:gutentags_ctags_extra_args += ['--c-kinds=+px']


" 最近打开文件列表
"
Plugin 'vim-scripts/mru.vim'

call vundle#end()            " required
filetype plugin indent on    " required



"=======================================
" tab 标签页切换快捷键
"=======================================
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

