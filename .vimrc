set number "行番号の表示
set tabstop=4 "tabをスペースN個分に
set expandtab "tabを半角スペースで挿入
set shiftwidth=4
set autoindent
set title
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
syntax on
hi Comment ctermfg=3
set fenc=utf-8
set noswapfile
set cursorline
set showmatch
set encoding=utf-8
set fileencoding=utf-8
set history=100
set ruler
set showcmd
set laststatus=2
set smartindent
set mouse=a
inoremap jj <Esc>

augroup highlightIdegraphicSpace
	autocmd!
	autocmd ColorScheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen
	autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

"Neobundle Scripts------------------------------
if &compatible
	set nocompatible	" Be iMproved
endif

" Required:
set runtimepath+=/home/student/2017/hi17furukawa/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/student/2017/hi17furukawa/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim/'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'


NeoBundle 'Shougo/unite.vim'
" unite {{{
let g:unite_enable_start_insert=1
nmap <silent> <C-u><C-b> :<C-u>Unite buffer<CR>
nmap <silent> <C-u><C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nmap <silent> <C-u><C-r> :<C-u>Unite -buffer-name=register register<CR>
nmap <silent> <C-u><C-m> :<C-u>Unite file_mru<CR>
nmap <silent> <C-u><C-u> :<C-u>Unite buffer file_mru<CR>
nmap <silent> <C-u><C-a> :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
au FileType unite nmap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite imap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite nmap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite imap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite nmap <silent> <buffer> <ESC><ESC> q
au FileType unite imap <silent> <buffer> <ESC><ESC> <ESC>q
" }}}

NeoBundle 'Shougo/vimproc', {
	\ 'build' : {
	\	'windows' : 'make -f make_mingw32.mak',
	\	'cygwin' : 'make -f make_cygwin.mak',
	\	'mac' : 'make -f make_mac.mak',
	\	'unix' : 'make -f make_unix.mak',
	\	},
	\ }

"" neocomplcache
NeoBundle 'Shougo/neocomplcache'
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
	\ 'default' : ''
	\ }

" Plugin key-mappings.
inoremap <expr><C-g>	neocomplcache#undo_completion()
inoremap <expr><C-l>	neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()


NeoBundle 'tpope/vim-endwise', {
	\ 'autoload' : { 'insert' : 1,}}

NeoBundle 'Lokaltog/vim-easymotion'
" vim-easymotion {{{
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-s2)
xmap}s <Plug>(easymotion-s2)
omap z <Plug>(easymotion-s2)
nmap g/ <Plug>(easymotion-sn)
xmap g/ <Plug>(easymotion-sn)
omap g/ <Plug>(easymotion-tn)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0
let g:EasyMotion_keys = 'QZASDFGHJKL;'
let g:EasyMotion_use_upper = 1
let g:EasyMotion_enter_jump_first = 1
" }}}


NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" jellybeans カラースキーマ
set t_Co=256
syntax on
colorscheme molokai_dark

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts------------------------------
