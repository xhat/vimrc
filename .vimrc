" add by xhat
set encoding=utf-8
set termencoding=utf-8
set fencs=ucs-bom,utf8,gb18030,gbk,gb2312,big5,euc-jp,euc-kr,latin1,cp936

set nu
" 搜索不区分大小写，但键入了大写则自动区分大小写
set ignorecase smartcase
"iab <a <a href=""></a><esc>bbla
"quit
noremap qq <ESC>:q!<CR>
noremap tq <ESC>:q<CR>
noremap ts <ESC>:w<CR>
noremap tw <ESC>:w<CR>
noremap tsq <ESC>:wq<CR>
noremap tp <ESC>i<?php<CR><CR>?><ESC>ki<TAB>
" 空格键向上滚屏 光标不变
nnoremap <SPACE> 2<C-e>
noremap <C-j> 3<C-e>
noremap <C-k> 3<C-y>

" ctrl+h l 分别在插入模式下左右移动
imap <C-h> <ESC>i
imap <C-l> <ESC>la

set ambiwidth=double

"set so=6

" 状态栏格式定义
set laststatus=2

" 不折叠
" set foldlevelstart=99

" 搜索不区分大小写，但键入了大写则自动区分大小写
set ignorecase smartcase
"iab <a <a href=""></a><esc>bbla
"quit
noremap qq <ESC>:q!<CR>
noremap tq <ESC>:q<CR>
noremap ts <ESC>:w<CR>
noremap tw <ESC>:w<CR>
noremap tsq <ESC>:wq<CR>
noremap tp <ESC>i<?php<CR><CR>?><ESC>ki<TAB>
" 空格键向上滚屏 光标不变
nnoremap <SPACE> 2<C-e>
noremap <C-j> 3<C-e>
noremap <C-k> 3<C-y>

" ctrl+h l 分别在插入模式下左右移动
imap <C-h> <ESC>i
imap <C-l> <ESC>la

set ambiwidth=double

"set so=6

" 状态栏格式定义
set laststatus=2

set nu
" 搜索不区分大小写，但键入了大写则自动区分大小写
set ignorecase smartcase
"quit
noremap qq <ESC>:q!<CR>
noremap tsq <ESC>:wq<CR>
" 空格键向上滚屏 光标不变
nnoremap <SPACE> 2<C-e>
noremap <C-j> 3<C-e>
noremap <C-k> 3<C-y>

" ctrl+h l 分别在插入模式下左右移动
imap <C-h> <ESC>i
imap <C-l> <ESC>la

imap jk <ESC>

imap vv <ESC>:w<cr>
map vv <ESC>:w<cr>

set expandtab
set shiftwidth=4
set tabstop=4
"自动缩进
set cindent

set nocompatible
set bs=2

" 语法高亮
syntax enable

" 换行不注释
set paste
