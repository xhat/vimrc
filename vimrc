set encoding=utf-8
set fenc=utf-8
set fileencodings=ucs-bom,utf-8,cp936
"set fenc=cp936
"set fileencodings=cp936,ucs-bom,utf-8
set nobomb

language message zh_CN.UTF-8

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" 换行不再注释
set paste

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


set nu
"set im
set backspace=indent,eol,start
set helplang=cn
set gfn=monaco:h11 gfw=Monaco:h11
set linespace=3
" color molokai
" color oceandeep
color desert
set whichwrap=h,b,l,s,<,>,[,]
set sm
syntax on

set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set selection=inclusive
set hlsearch is
" autocmd GUIEnter * simalt ~X
"set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set ignorecase

function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
set guioptions+=r

set laststatus=2
 
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction
 
set statusline=
set statusline+=%f "path to the file in the buffer, relative to current directory
set statusline+=\ [%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=\ %h%1*%m%r%w%0* " flag
set statusline+=%{&encoding}, " encoding
set statusline+=%{&fileformat}] " file format
set statusline+=\ CWD:%r%{CurDir()}%h
set statusline+=\ Line:%l/%L
 
set nobackup
set nowb
set noswapfile
set noar

set formatoptions=tcqro

ino <C-v> <esc>:set paste<cr>mua<C-R>+<esc>mv'uV'v=:set nopaste<cr>
"imap <C-o> :set paste<cr>:exe PhpDoc()<cr>:set nopaste<cr>i


map qq  <ESC> :q!<CR>
map ts  <ESC> :w<CR>
map tw  <ESC> :w<CR>
map twq  <ESC> :wq<CR>

"You can obtain the completion dictionary file from:
"  http://cvs.php.net/viewvc.cgi/phpdoc/funclist.txt
set dictionary-=$VIM/funclist.txt dictionary+=$VIM/funclist.txt

"Use the dictionary completion
set complete-=k complete+=k

set mouse=nvc


set viminfo='1000,<800

"Use the dictionary completion
set complete-=k complete+=k

"function! InsertTabWrapper()
"    let col=col('.')-1
"    if !col || getline('.')[col-1] !~ '\k'
"        return "\<TAB>"
"    else
"        return "\<C-N>"
"    endif
"endfunction
"
""Remap the tab key to select action with InsertTabWrapper
"inoremap <TAB> <C-R>=InsertTabWrapper()<CR>

" 不折叠
set foldlevelstart=99

" 搜索不区分大小写，但键入了大写则自动区分大小写
set ignorecase smartcase
"quit
noremap qq <ESC>:q!<CR>
noremap tsq <ESC>:wq<CR>
" 空格键向上滚屏 光标不变
nnoremap <SPACE> 2<C-e>
noremap <C-j> 3<C-e>
noremap <C-k> 3<C-y>
" " ctrl+h l 分别在插入模式下左右移动
imap <C-h> <ESC>i
imap <C-l> <ESC>la
" " 大小写替换esc键
"
imap >> <ESC>>>
imap jk <ESC>
imap vv <ESC>:w<cr>
map vv <ESC>:w<cr>

" for smarty tag: <{}>
imap  ttt <{}><ESC>hi


" 竖向标示
" set cursorcolumn

" hehe



