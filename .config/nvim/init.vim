source $HOME/.config/nvim/vim-plug/plugins.vim
" source $HOME/.config/nvim/lua/lsp.lua
" nmap <F11> ":let b = ['foo', 'bar', 'vim'] | %s//\=(remove(b, 0))/g

" set <F13>=^[[13;2u
" source for below: https://www.itcodar.com/linux/how-to-replace-finding-words-with-the-different-in-each-occurrence-in-vi-vim-editor.html
" This replaces all occurances with different elements as specified in the array of b
" may come back and make this a more dynamic script that allows the user to
" specify how many unique elements you want, along with specifying those
" elements and maybe which word it comes from. This is all to make the process
" easier
nmap <F11> *:let b = ['foo', 'bar', 'vim'] \| %s/@/\=(remove(b, 0))/g \|<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
let g:vim_notes_date_format = "%m-%d-%Y-%A"
 " echo "b's array replaces anything with the occurances of @"
 "
" map V vg_
nmap <BS> d])
" map H F(i
map H F(i
map <F13> :Test<CR>
map vv V
" vmap <Left> e
" vmap <Right> b
vmap vv <Plug>(Exchange)
map X v<esc>$xgv<esc>
 " imap <F13> :echo 'hi'
 " this only works for rxvt
 " nmap <S-CR> :echo 'hi'
imap <S-CR> <esc><Plug>(cosco-commaOrSemiColon)A
" imap <S-CR> <esc><Plug>(cosco-commaOrSemiColon)ji
nmap <CR> <Plug>(cosco-commaOrSemiColon)j
 " imap <S-CR> 
 " nmap \x1b[13;2u :echo 'hi'
" let g:Endlines = {
"   &#039erlang': '.',
"   &#039java': ';',
"   &#039javascript': ';',
"   &#039ocaml': ';;',
"   &#039perl': ';',
"   &#039php': ';',
"   &#039python': ':',
"   &#039sml': ';'
" \}
 "
 " perl-regex (the most common regex)
" nnoremap <leader>/ :call eregex#toggle()<CR>

" V trigger for perl regex replacement
" :%S//

" bringing back regular text editor functionality cursor config into always in insert mode
" nnoremap <LeftMouse> <LeftMouse>i
" nnoremap <S-LeftMouse> V<LeftMouse>

nmap <S-CR> <Plug>(cosco-commaOrSemiColon)
" this could have been shift-enter... but I'd need rxvt to map shift/enter as individual keys
" nmap <CR> <Plug>(cosco-commaOrSemiColon)j
" for looking @registers
nmap q; q:

" instantly quit without saving; like :q!
" nmap ;q ZQ

nmap ? <a-p>wbi'<esc>ea',<esc>w<a-p>
"
" let mapleader = ' '
" list out any other mode here to whitelist: this is so that the leader key
" doesn't interfere with my terminal mode
" Something here wasn't letting me use TS cmds... -unsure of the cmds here.
" let g:UltiSnipsExpandTrigger="<c-q>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
    
" Replace within visual mode (search and replace)
" this is within the global flag because it's within the visual mode selection
" already.
vmap <F8> :s/\%Vs/k/g<Left><Left><Left><Left>
autocmd FileType javascript,css,cpp,python nmap <silent> <F> <Plug>(cosco-commaOrSemiColon)
autocmd FileType javascript,css,cpp,python imap <silent> <F> <c-o><Plug>(cosco-commaOrSemiColon)
" " ActivateAddons vim-snippets snipmate
" " press <Tab> to expand or jump in a snippet. These can also be mapped separately
" " via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
" imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" " -1 for jumping backwards.
" inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

" snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
" snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

" " For changing choices in choiceNodes (not strictly necessary for a basic setup).
" imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
" smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
" " let g:UltiSnipsExpandTrigger = '<tab>'
" " let g:UltiSnipsJumpForwardTrigger = '<tab>'
" " let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" let g:UltiSnipsSnippetDirectories=["latex_snippets"]

nmap <space> <leader>
" packloadall
vmap <space> <leader>
vnoremap <S-R> c
" :TSToggle highlight
" autocmd! VimEnter *.py :TSToggle highlight
" autocmd! VimEnter *.vim :TSToggle highlight
" autocmd! VimEnter *.cpp :TSToggle highlight
" autocmd! VimEnter *.lua :TSToggle highlight
let g:ycm_use_ultisnips_completer = 1
" let g:UltiSnipsExpandTrigger='<c-j>'

" nmap <leader>g gcc
" this automatically selects the word the cursor is on top of
" I bound it to space (originally leader, but it was too slow) + motion keys because my hands are already on top of
" the motion keys anyway.
" +useful for trying to change the same word in multiple lines with c
nmap <space><space> <c-v>iw
nmap <space>b <c-v>iw
nmap <space>w <c-v>iw
nmap <space>j <c-v>iw
nmap <space>k <c-v>iw
nmap <space>l <c-v>iw
nmap <space>h <c-v>iw
" nmap <c-v> <c-v>iw

" nmap j j<Esc>
" nmap k k<Esc>

" visual line mode for motion keys
nmap <space><space>b V
nmap <space><space>w V
nmap <space><space>j V
nmap <space><space>k V
nmap <space><space>l V
nmap <space><space>h V
" visual line mode using alt instead of space space
" nmap <a><a>b V
" nmap <a><a>w V
" nmap <a><a>j V
" nmap <a><a>k V
" nmap <a><a>l V
" nmap <a><a>h V
" bg always transparent or termcolor
" colorscheme dogrun
colorscheme molokai
" colorscheme dogrun
hi Nontext ctermfg=NONE guibg=NONE | hi Normal guibg=NONE ctermbg=NONE | hi Visual guibg=Yellow ctermbg=Blue | hi Comment ctermfg=darkmagenta|hi LineNr ctermfg=grey|hi LineNr guibg=NONE
" this maps E and sends user into imode at the end of the word
 nmap E viwA
" this deletes any char at the selection until the end of the word and goes into insert mode
" nmap F vec
" warning: the vmap mode does the same; except, it cannot differentiate special characters when selecting edi before it
" vmap F ec
" this wraps print("text") within the selected text in vmode
vmap <leader>v sprint("<c-r>"")<esc>
" vnoremap v ,jsprint(<c-r>"<esc>>
nmap <c-q> ,js[[print(<c-r>"<esc>>]]

" remapped parenthesis with ()
" imap <s-9> 9
" imap <s-9> red
" innoremap <s-CR> o<Esc>
nmap <C-f> *:%s///gc<Left><Left><Left>
nnoremap D Da
:highlight Normal guibg=none guifg=gray
vmap <C-f> *:%s///gc<Left><Left><Left>
" nmap <silent> <S-Left> <c-w>W
" nmap <silent> <S-Right> <c-w>w
" replace colon and semicolon
" inoremap ; :
" inoremap : ;

" these cmds open up a reference sheet for looking over custom funcs
" autocmd! VimEnter *.py :vs python_ref.py |:winc l| :Codi
" autocmd! VimEnter *.py :Codi|:call timer_start( 700, { id -> execute( ':vs python_ref.py|:winc l' ) }, { 'repeat': 1 } )|
autocmd! VimEnter *.cpp :Codi|:call timer_start( 700, { id -> execute( ':vs ref_cpp.cpp|:winc l' ) }, { 'repeat': 1 } )|
" autocmd! VimEnter *.cpp :Codi
" this moves the parenthesis over a word
map <Right> /)<CR>a<backspace><esc>ea)<esc>:nohlsearch<CR><esc>h
" let g:UltiSnipsEnableSnipMate ='<Leader>fe'

set shiftwidth=4
" this starts vimpad/codi each startup
au BufEnter *.vim :call vimpad#on()
" au BufEnter *.py :Codi
" au BufEnter *.cpp :Codi
au BufEnter *.c :Codi
au BufEnter *.lua :Codi
" this repeats vimpad by refreshing it every 200 secs.
au BufEnter *.vim :call timer_start( 700, { id -> execute( ':call vimpad#refresh()' ) }, { 'repeat': -1 } )
nmap <A-]> <Plug>(vimpad-refresh)
nmap <A-[> <Plug>(vimpad-on)

" Linking to the existing group
highlight link VimpadOutput      PmenuSel
highlight link VimpadOutputError Error
" Defining your own colors
" for terminal
" ctermfg as the font golor
" ctermbg as the background color
highlight VimpadOutput      ctermfg=LightCyan    ctermbg=DarkBlue
highlight VimpadOutputError ctermfg=LightMagenta ctermbg=DarkMagenta

" for gui
" guifg as the font golor
" guibg as the background color
highlight VimpadOutput      guifg=DarkBlue    guibg=LightCyan    
highlight VimpadOutputError guifg=DarkMagentaguibg=LightMagenta 
" to see all the highlight groups
" :highlight
" lua require('init.lua')
" Inside an init.vim file
" lua <<EOF
" function _G.ReloadConfig()
"   for name,_ in pairs(package.loaded) do
"     if name:match('^cnull') then
"       package.loaded[name] = nil
"     end
"   end

"   dofile(vim.env.MYVIMRC)
" end
" EOF
noremap <silent> <c-s> :update<CR>
command! ReloadConfig lua ReloadConfig()

" nnoremap <silent> K <cmd>:unmap lua vim.lsp.buf.hover()<CR>
" inoremap <silent> L <cmd>:lua vim.lsp.buf.hover()<CR>
" nmap <silent> L <cmd>:lua vim.lsp.buf.hover()<CR>


" for python3, may make it compatible for other filetypes too.
" terminal cmds and mappings
" <C-\><C-n> = exit out of terminal mode (I don't like how it automatically
" starts up in terminal-editing mode, so I exit out as soon as I use this cmd)
tnoremap \m <C-\><C-n>
" nnoremap <F5> :w<CR>:FloatermNew! python3 ./%<CR>
autocmd Filetype python map <silent> <buffer> <F5> :update<CR>:FloatermNew! python3 ./%<CR>
autocmd Filetype cpp map <silent> <buffer> <F5> :update<CR>:FloatermNew! gcc ./%<CR>
autocmd Filetype lua map <silent> <buffer> <F5> :update<CR>:FloatermNew! lua ./%<CR>

autocmd Filetype sh map <silent> <buffer> <F5> :update<CR>:!time bash %<CR>
tnoremap <silent> \t <C-\><C-n>:FloatermToggle<CR><C-\><C-n>
nnoremap <silent> \t <C-\><C-n>:FloatermToggle<CR><C-\><C-n>
" autocmd FileType python nmap <F5> :w<CR>:FloatermNew! python3 ./%<CR>
"<C-\><C-n>
" autocmd FileType python map <buffer> <F5> :w<CR>:FloatermSend! python3 ./%<CR><C-\><C-n>
" autocmd FileType cpp map <buffer> <F5> :w<CR>:FloatermNew! gcc ./%<CR><C-\><C-n>
" autocmd FileType lua map <buffer> <F5> :w<CR>:FloatermNew! lua ./%<CR><C-\><C-n>
" vim surround key mappings
nmap <silent> <space>" ysiw"l
nmap <silent> <space>@ ysiw@l
nmap <silent> <space>( ysiw)l
nmap <silent> <space>) ysiw(l
nmap <silent> <space>[ ysiw[l
nmap <silent> <space>> ysiw>l
nmap <silent> <space>{ ysiw}l
nmap <silent> <space>' ysiw'l
nmap <silent> <space>> ysiw<
nmap <silent> <space>< ysiw>
nmap <silent> <space>+ ysiw+l
nmap <silent> <space>- ysiw-l
nmap <silent> <space>/ ysiw/l
nmap <silent> <space>\ ysiw\l
nmap <silent> <space>* ysiw*l
nmap <silent> <space>! ysiw!l

" triple surround with vim-surround (nmap)
nmap <silent> <space>3" ysiw"lysa""llysa""ll
nmap <silent> <space>3' ysiw'lysa''llysa''ll
nmap <silent> <space>3* ysiw*lysiw*llysiw*l
nmap <silent> <space>3! ysiw!lysiw!llysiw!l
nmap <silent> <space>3> ysiw>lysa>>llysa>>ll
nmap <silent> <space>3[ ysiw[lysa[[llysa[[ll
nmap <silent> <space>3{ ysiw{lysa{{llysa{{ll
nmap <silent> <space>3( ysiw)lysa))llysa))ll
" triple surround with vim-surround (vmap)
" vmap <silent> <space>3" <Plug>VSurround"<Plug>VSurround"<Plug>VSurround"<CR>
" vmap <silent> <space>3' <Plug>VSurround'<CR><Plug>VSurround'<CR><Plug>VSurround'<CR>
" vmap <silent> <space>3* <Plug>VSurround*<CR><Plug>VSurround*<CR><Plug>VSurround*<CR>
" vmap <silent> <space>3! 
" vmap <silent> <space>3> 
" vmap <silent> <space>3[ 
" vmap <silent> <space>3{ 
" vmap <silent> <space>3( 
" triple "delete" surround with vim-surround
nmap <silent> <space>d3" ds"ds"ds"
nmap <silent> <space>d3' ds'ds'ds'
nmap <silent> <space>d3* ds*ds*ds*
nmap <silent> <space>d3! ds!ds!ds!
nmap <silent> <space>d3> ds>ds>ds>
nmap <silent> <space>d3[ ds[ds[ds[
nmap <silent> <space>d3{ ds{ds{ds{
nmap <silent> <space>d3( ds)ds)ds)
" vim surround delete
nmap <silent> <space>d) ds(
nmap <silent> <space>d" ds"
nmap <silent> <space>d( ds)
nmap <silent> <space>d[ ds[
nmap <silent> <space>d> ds>
nmap <silent> <space>d{ ds}
nmap <silent> <space>d' ds'
nmap <silent> <space>d< ds<
nmap <silent> <space>d+ ds+
nmap <silent> <space>d- ds-
nmap <silent> <space>d/ ds/
nmap <silent> <space>d\ ds\
nmap <silent> <space>d* ds*
nmap <silent> <space>d! ds!
" surround (visual mode)

" temporary
" map 9<Right> viw9e<Plug>VSurround)<CR>k
" map 8<Right> viw8e<Plug>VSurround)<CR>k
" map 7<Right> viw7e<Plug>VSurround)<CR>k
" map 6<Right> viw6e<Plug>VSurround)<CR>k
" map 5<Right> viw5e<Plug>VSurround)<CR>k
" map 4<Right> viw4e<Plug>VSurround)<CR>k
" map 3<Right> viw3e<Plug>VSurround)<CR>k
" map 2<Right> viw2e<Plug>VSurround)<CR>k
" automatically goes into vmode if you press the l/r arrow keys
" nmap <Right> viw
" nmap <Left> viw
" vmap <Right> e
" vmap <Left> b

" nmap l viw
" nmap h viw
" vmap l e
" vmap h b


" nmap <A-l> <Right>
" nmap <A-h> <Left>
" move with motion only using ctrl + arrowkeys
vnoremap <silent> <space>( <Plug>VSurround)<CR>
vnoremap <silent> <space>[ <Plug>VSurround[<CR>
vnoremap <silent> <space>{ <Plug>VSurround}<CR>
vnoremap <silent> <space>> <Plug>VSurround><CR>
vnoremap <silent> <space>" <Plug>VSurround"<CR>
vnoremap <silent> <space>' <Plug>VSurround'<CR>
vnoremap <silent> <space>* <Plug>VSurround*<CR>
vnoremap <silent> <space>< <Plug>VSurround<
vnoremap <silent> <space>/ <Plug>VSurround/<CR>
vnoremap <silent> <space>\ <Plug>VSurround\<CR>
vnoremap <silent> <space>! <Plug>VSurround!<CR>

" triple surround in visual mode
" gv reselects the last visual selection
vnoremap <silent> <space>3( <Plug>VSurround)<CR>gv<Plug>VSurround)<CR>gv<Plug>VSurround)
vnoremap <silent> <space>3[ <Plug>VSurround[<CR>gv<Plug>VSurround[<CR>gv<Plug>VSurround[
vnoremap <silent> <space>3{ <Plug>VSurround}<CR>gv<Plug>VSurround}<CR>gv<Plug>VSurround}
vnoremap <silent> <space>3> <Plug>VSurround><CR>gv<Plug>VSurround><CR>gv<Plug>VSurround>
vnoremap <silent> <space>3" <Plug>VSurround"<CR>gv<Plug>VSurround"<CR>gv<Plug>VSurround"
vnoremap <silent> <space>3' <Plug>VSurround'<CR>gv<Plug>VSurround'<CR>gv<Plug>VSurround'
vnoremap <silent> <space>3* <Plug>VSurround*<CR>gv<Plug>VSurround*<CR>gv<Plug>VSurround*
" vnoremap <silent> <spac3e>< <Plug>VSurround<    gv<Plug>VSurround<    gv<Plug>VSurround<
vnoremap <silent> <space>3/ <Plug>VSurround/<CR>gv<Plug>VSurround/<CR>gv<Plug>VSurround/
vnoremap <silent> <space>3\ <Plug>VSurround\<CR>gv<Plug>VSurround\<CR>gv<Plug>VSurround\
vnoremap <silent> <space>3! <Plug>VSurround!<CR>gv<Plug>VSurround!<CR>gv<Plug>VSurround!
" vim delete surrounds within visual mode?
" vnoremap <silent> <space>t( ds(
" vnoremap <silent> <space>t[ <Plug>VSurround[<CR>
" vnoremap <silent> <space>t{ <Plug>VSurround}<CR>
" vnoremap <silent> <space>t> <Plug>VSurround><CR>
" vnoremap <silent> <space>t" <Plug>VSurround"<CR>
" vnoremap <silent> <space>t' <Plug>VSurround'<CR>
" vnoremap <silent> <space>t* <Plug>VSurround*<CR>
" vnoremap <silent> <space>t< <Plug>VSurround<
" vnoremap <silent> <space>t/ <Plug>VSurround/<CR>
" vnoremap <silent> <space>t\ <Plug>VSurround\<CR>
" vnoremap <silent> <space>t! <Plug>VSurround!<CR>

" vim replace semi colon with colon and vice versa
nnoremap ; :
vnoremap ; :
" for moving lines and or yanking extras
vnoremap <C-c> "+y
nnoremap <C-p> "+p

nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv




set expandtab
" custom vim mappings below
" colorscheme nord
" colorscheme seoul
 " colorscheme srcery
" colo seoul256
" colorscheme Lucid
" colorscheme zellner
" nnoremap <C-f> :%s/
" let g:lightline = {
"       \ 'colorscheme': 'nord',
"       \ }
nnoremap <C-t> :Telescope<CR>
nnoremap <A-f> :Snippets<CR>
let g:lightline = {
      \ 'colorscheme': 'dogrun',
      \ }

" set list
" set listchars=eol:⏎,tab:>-,trail:.,extends:>,precedes:<
nnoremap <C-w> <Plug>(easymotion-overwin-w)

set wrap
" remapped zero/0 to be at the beginning of the line without whitespace
nnoremap ^ 0
nnoremap 0 ^
" nnoremap 0 b
" inoremap <s-n> <C-n>  
" inoremap <tab> <C-n>
"inoremap <s-tab> <Up>



" remapped useful passive cmds here
nnoremap <A-\> :source ./%<CR>
" nmap <leader>o <Plug>(vimpad-on)
" nnoremap <c-]> <Plug>(vimpad-on)
" autocmd VimEnter FileType vim map <buffer> <Plug>(vimpad-on)
" nnoremap <c-]> <Plug>(vimpad-refresh)
" nnoremap <c-]> :Codi<CR>
"nmap <C-S> :Codi!<bar><Esc><Plug>(Exchange)$ this breaks other keymaps
nmap cxw <Plug>(Exchange)
nmap cxl <Plug>(ExchangeLine)
" works best with visual line mode: V; this replaces all selected lines with the other selected text all in vline mode
vmap <space><space> <Plug>(Exchange)
" nnoremap cxiw cxiw":Codi!<CR>
nnoremap <C-/> :Commentary<CR>
set mouse=a
set noswapfile
set number
set relativenumber

noremap <F5> {V}:FloatermNew <CR>
"autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"python autocmd FileType imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"noremap <C-w>+ :resize +5<CR>
"noremap <C-w>- :resize -5<CR>
noremap <F6> :vertical:resize -5<CR>
noremap <F7> :vertical:resize +5<CR>
vmap < <gv
vmap > >gv

set ignorecase
" noremap <F8> @w<CR>
" noremap <F5> @e<CR>
noremap <F9> {V}:FloatermNew python3<CR>

"au VimEnter * vsplit | autocmd VimEnter * edit /home/amadeus/atestp.py
" au VimEnter * vsplit /home/amadeus/python_ref.py
"autocmd vsplit|autocmd VimEnter * edit /home/amadeus/atestp.py
nnoremap <Leader>b :ls<CR>:b<Space>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap + :res +5<CR>
nnoremap _ :res -5<CR>
let g:floaterm_keymap_new ='<Leader>fn'
let g:floaterm_keymap_toggle ='<Leader>t'
let g:floaterm_keymap_next ='<Leader>fm'

let g:user_emmet_leader_key=','

autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>




" existing Maintain indentation. 
set autoindent

" Show matches for () [] {} 
set showmatch

" tab Default spacing = 8 columns
set ts=8

" Default backspace like normal
set bs=2

" words Swap (from vim.fandom)
"nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>``
"nnoremap <silent> gw ma"_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a==
"add b at the end if you want it to move a word
"nnoremap <silent> gl "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>``

"THIS IS THE ORIGINAL BACK AND REPLACE
"nnoremap <silent> B ma"_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a":/\W\w<CR>Nb:nohlsearch<CR>
nnoremap <silent> B ma"_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a":/\W\w<CR>NNl:nohlsearch<CR>
" nnoremap <silent> B ma"_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a":/\W\w<CR>NNl:nohlsearch<CR>
"this is TEMPORARY for back and replace

" nnoremap <silent> B ma"_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a":/^\w\+\m\\|\W\w<CR>NNl:nohlsearch<CR>
nnoremap <silent> B ma"_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a":/^\w\+\m\\|\W\w<CR>NNl:nohlsearch<CR>
set lazyredraw



    
    " Vim-scripts emmet-vim for web-dev/fullstack
    " Plug 'mattn/emmet-vim'
    
    " vim surround - use cs as the prefix: this auto-c's any special
    " characters when appropriate
    " Plug 'tpope/vim-surround'

    " Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
    " - https://github.com/Valloric/YouCompleteMe
    " - https://github.com/nvim-lua/completion-nvim
    let g:UltiSnipsExpandTrigger="<c-w>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"

" better swap replace quick?    
"
"this moves the cursor as it moves te word ORIGINAL swap repl. vanilla
" nnoremap <silent> W ma"_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a":/\W\w<CR>w:nohlsearch<CR>
"THIS USES A NEW REGEX \\ might be better idk?
" nnoremap <silent> W ma"_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a":/\a\\|\w<CR>w:nohlsearch<CR>
" nnoremap <silent> W ma"_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a":/\W\w\\|^\w\+\m<CR>w:nohlsearch<CR>
" regex motion keybinds
nnoremap <silent> w ":/^\w\+\m\\|\W\w<CR>l:nohlsearch<CR>
nnoremap <silent> b ":/^\w\+\m\\|\W\w<CR>NNl:nohlsearch<CR>


nnoremap <silent> W ma"_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a":/^\w\+\m\\|\W\w<CR>w:nohlsearch<CR>

"
"
"nnoremap <silent> b ":/\W\w<CR>Nl:nohlsearch<CR>
"
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
nmap <silent> <C-P> :Files<CR>


