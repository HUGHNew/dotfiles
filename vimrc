" Basic Settings and Compatibility "
set nocompatible         " Disable Vi compatibility mode, enable Vim's enhanced features.
set noeb                 " Disable error bells.
set confirm              " Prompt for confirmation when closing unsaved modified files.
set nobackup             " Do not create backup files (e.g., file.txt~).
set noswapfile           " Do not create swap files (e.g., .file.txt.swp).
set autoread             " Automatically reload a file if it has been changed outside of Vim. / 如果文件在 Vim 外部被修改，则自动重新加载。
set autowrite            " Automatically write (save) the file when switching buffers, quitting, or running shell commands. / 在切换缓冲区、退出或运行shell命令时自动写入（保存）文件。


" Display "
syntax enable            " Enable syntax highlighting. / 启用语法高亮。
syntax on                " Turn on syntax highlighting (redundant with 'syntax enable', but harmless). / 打开语法高亮（与 'syntax enable' 有重复，但无害）。
set t_Co=256             " Tell Vim to use 256 colors if your terminal supports it. / 告诉 Vim 使用 256 色（如果您的终端支持）。
set cul                  " Highlight the current line. / 高亮当前行。
autocmd InsertEnter * se cul " Autocommand: When entering insert mode, highlight the current line. / 自动命令：进入插入模式时，高亮当前行。
set ruler                " Show the current cursor position (line number, column number) in the status line. / 在状态栏显示光标当前位置（行号、列号）。
set showcmd              " Show the partially typed command in the status line. / 在状态栏显示（部分输入的）命令。
set laststatus=2         " Always show the status line (even if there's only one window). / 始终显示状态栏（即使只有一个窗口）。
set number               " Show line numbers
set relativenumber		 " Show relative line numbers
set cmdheight=2          " Set the height of the command line to 2 lines. / 设置命令行高度为 2 行。
set showmatch            " Show the matching bracket when a bracket is typed. / 输入括号时显示匹配的括号。
set matchtime=1          " The time in tenths of a second to show the matching bracket. / 显示匹配括号的时间（单位：十分之一秒）。
set linespace=0          " Set the space between lines to 0 (useful for some fonts or terminal emulators to reduce line height). / 设置行间距为 0（对某些字体或终端模拟器减少行高很有用）。
set shortmess=atI     	 " Shorten some messages (e.g., startup messages, intro messages). 'a' hides the intro message, 't' hides the "Type :qa<CR>" message, 'I' hides the intro message when starting Vim.

" Indentation and Tabs "
set autoindent           " Automatically indent new lines based on the previous line. / 根据前一行自动缩进新行。
set cindent              " Enable C-style indentation for C/C++ files. / 启用 C/C++ 风格的缩进。
set tabstop=4            " Set the width of a tab character to 4 spaces. / 设置制表符的宽度为 4 个空格。
set expandtab            " Convert tabs to spaces when you press the Tab key. / 按 Tab 键时将制表符转换为空格。
set softtabstop=4        " Defines the number of spaces a <Tab> counts for when editing. / 定义在编辑时 <Tab> 键代表的空格数。
set shiftwidth=4         " Set the number of spaces for (auto)indenting and '<<' or '>>' commands. / 设置缩进和 '<<' 或 '>>' 命令的空格数。
set smarttab             " Smarter tab behavior, especially for leading spaces. / 更智能的 Tab 行为，特别是对于行首空格。


" Searching "
set hlsearch             " Highlight all matches for the last search pattern. / 高亮显示上次搜索模式的所有匹配项。
set incsearch            " Show search matches as you type the search pattern. / 在输入搜索模式时即时显示搜索匹配项。
set ignorecase           " Ignore case when searching. / 搜索时忽略大小写。
set magic                " Enable 'magic' regular expression characters, which means most characters are special in regular expressions by default. / 启用“魔法”正则表达式字符，这意味着大多数字符在正则表达式中默认是特殊的。
set history=512          " Increase the number of commands and search patterns remembered in history to 1000. / 将历史中记住的命令和搜索模式数量增加到 1000。


" Encoding "
set langmenu=zh_CN.UTF-8 " Set the language for menus (if using a GUI version of Vim) to simplified Chinese. / 设置菜单语言（如果使用 Vim 的 GUI 版本）为简体中文。
set helplang=cn          " Set the language for Vim's help files to Chinese. / 设置 Vim 帮助文件的语言为中文。
set termencoding=utf-8   " Set the encoding used by your terminal to UTF-8. / 设置终端使用的编码为 UTF-8。
set encoding=utf8        " Set Vim's internal character encoding to UTF-8. / 设置 Vim 的内部字符编码为 UTF-8。
set fileencodings=utf8,ucs-bom,gbk,gb2312,gb18030 " Set the order in which Vim tries to detect the encoding of a file. / 设置 Vim 尝试检测文件编码的顺序。


" Cursor and Scrolling "
set scrolloff=5          " Keep 5 lines of context above and below the cursor when scrolling. / 滚动时在光标上方和下方保留 5 行上下文。
set whichwrap+=<,>,h,l   " Allow cursor to move past the end of the line ('<' and '>') and between lines ('h' and 'l') when using arrow keys or h/l. / 允许光标在使用箭头键或 h/l 时越过行尾和在行之间移动。
set backspace=2          " Allow backspacing over anything in insert mode ('indent', 'eol', 'start'). / 在插入模式下允许回退任意内容（如 'indent'、'eol'、'start'）。
set mouse=a              " Enable mouse support for all modes. / 在所有模式下启用鼠标支持。
set selection=exclusive  " Set the default behavior for selections. 'exclusive' means the last character of a visual selection is not included. / 设置选择的默认行为。'exclusive' 意味着视觉选择的最后一个字符不被包含。
set selectmode=mouse,key " Define when 'select mode' is entered (when using the mouse or a select key). / 定义何时进入“选择模式”（使用鼠标或选择键时）。


" Filetype "
filetype on              " Enable filetype detection. / 启用文件类型检测。
filetype plugin on       " Enable filetype-specific plugins. / 启用文件类型特定的插件。
filetype indent on       " Enable filetype-specific indentation. / 启用文件类型特定的缩进。


