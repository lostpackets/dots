" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" or                                , { 'branch': '0.1.x' }
    " nvim-treesitter extends the colors of syntax highlighting
    Plug 'nvim-treesitter/nvim-treesitter'


    " realtime scratchpad for py, etc.
    Plug 'metakirby5/codi.vim'
    " realtime scratchpad specifically for vim
    Plug 'yuki-uthman/virtual-echo.nvim'

    " more vim color themes
    "
    Plug 'tomasr/molokai'
    " ycm
    Plug 'ycm-core/YouCompleteMe'
    " css colors
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'lilydjwg/colorizer'
    " all from nvim-cmp
    Plug 'arcticicestudio/nord-vim'
    " Plug 'neovim/nvim-lspconfig'


    " Plug 'neovim/nvim-lspconfig'
    " Plug 'williamboman/mason.nvim'
    " Plug 'williamboman/mason-lspconfig.nvim'

    " Autocompletion

    "  Snippets
    Plug 'L3MON4D3/LuaSnip', {'tag': 'v<CurrentMajor>.*'}
    Plug 'rafamadriz/friendly-snippets'

    Plug 'VonHeikemen/lsp-zero.nvim'
    " For ultisnips users.
    " Plug 'SirVer/ultisnips'

    " more vim color themes

    Plug 'wadackel/vim-dogrun'
    " vim's version of ohmyzsh bars
    Plug 'itchyny/lightline.vim'
    " replacement of lsp
    " Plug 'williamboman/mason.nvim'

    " ACTUAL LSP plugin
    " Plug 'neovim/nvim-lspconfig'
    " replacement of lsp configs
    " Plug 'williamboman/mason-lspconfig.nvim'
    " autcompletes the BUILT-IN vim autocompletion
    " Plug 'vim-scripts/AutoComplPop'
    " vim easymotion: spreads keys like alphabet soup
    Plug 'easymotion/vim-easymotion'
    "0 this is for telescopes fzf
    " Plug 'nvim-lua/plenary.nvim'
    " Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
let g:codi#interpreters = {
       \ 'python': {
           \ 'bin': '/usr/bin/python3',
           \ 'prompt': '^\(>>>\|\.\.\.\) ',
           \ },
       \ }
"let g:codi#interpreters = {
"	\ 'python': {
"		\ 'bin': ['python3', '-i', '-c', "'import readline; readline.set_auto_history(False)'"],
"		\ 'prompt': '^\(>>>\|\.\.\.\) ',
"		\ 'quitcmd': 'exit()',
"	\ }

    ""both junegunn's fuzzy finder (vim-edition)
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    Plug 'junegunn/fzf.vim'
    " tpope replaces tags/surrounding special chars
    Plug 'tpope/vim-surround'

    " " tpope adds commentary for all .filetypes
     Plug 'tpope/vim-commentary'
    " SirVer uses abbreviation for autocomplete like emmet
     Plug 'SirVer/ultisnips'

    " Snippets are separated from the engine. Add this if you want them:
    Plug 'honza/vim-snippets'

    " Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
    " - https://github.com/Valloric/YouCompleteMe
    " - https://github.com/nvim-lua/completion-nvim
    let g:UltiSnipsExpandTrigger="<c-q>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"
    
    " Vim-scripts emmet-vim for web-dev/fullstack
    Plug 'mattn/emmet-vim'
    
    " " vim surround - use cs as the prefix: this auto-c's any special
    " " characters when appropriate
    " Plug 'tpope/vim-surround'

    " " Vim-scripts live js editing
    Plug 'turbio/bracey.vim'
    " " Vim-scripts lua-Support.vim
    " Plug 'WolfgangMehner/lua-support'
    " " Vim-scripts python-Support.vim
    " Plug 'WolfgangMehner/python-support'
    " " Vim-scripts cpp-Support.vim
    " Plug 'WolfgangMehner/c-support'
    " " Vim-scripts AWK-Support.vim
    " Plug 'vim-scripts/awk-support.vim'
    " " Vim-scripts bash-Support.vim
    " Plug 'vim-scripts/bash-support.vim'
    " " vim-exchange (enables swapping words with keybinds)
    Plug 'tommcdo/vim-exchange'
    " " autocomplete Support
    " Plug 'ycm-core/YouCompleteMe'
    " " Better Syntax Support
    " Plug 'sheerun/vim-polyglot'
    " " Floating terminals inside vim tui
    Plug 'voldikss/vim-floaterm'
    " " File Explorer
    " Plug 'scrooloose/NERDTree'
    " " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'


    " LSP Support
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'

    " Autocompletion
    Plug 'hrsh7th/nvim-cmp' "buggy...? lsp errors
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-nvim-lua'

call plug#end()

lua <<EOF
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.set_preferences({
  set_lsp_keymaps = false
})

lsp.on_attach(function(client, bufnr)
  local noremap = {buffer = bufnr, remap = false}
  local bind = vim.keymap.set

  -- First keybind shows a desc of the keyword
  bind('n', '<A-l>', '<cmd>lua vim.lsp.buf.hover()<cr>', noremap)
  bind('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
  bind('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
  bind('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
  bind('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
  bind('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
  bind('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
  bind('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
  bind('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
  bind('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

  -- Diagnostics
  bind('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
  bind('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
  bind('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  -- more code  ...
end)
lsp.setup()
EOF
"reference for keybindings of lsp-zero https://github.com/VonHeikemen/lsp-zero.nvim/wiki/Under-the-hood
