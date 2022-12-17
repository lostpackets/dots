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

    " more word motions
    " Plug 'chaoren/vim-wordmotion'
    " faster search specification
    Plug 'ggandor/leap.nvim'
    " perl-regex instead of vim-regex
    " Plug 'othree/eregex.vim'

    " realtime scratchpad for py, etc.
    Plug 'metakirby5/codi.vim'
    " realtime scratchpad specifically for vim
    Plug 'yuki-uthman/virtual-echo.nvim'

    " endline vim mirror automatically adds syntax at the end of line
    Plug 'vim-scripts/endline'
    " cosco vim semiautomatically corrects semicolon/colon errors with multiple filetypes
    Plug 'lfilho/cosco.vim'
    "
    " better vim syntax highlighting
    Plug 'David-Kunz/markid'
    " more vim color themes

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

    " tpope sleuth matches tabs automatically
    Plug 'tpope/vim-sleuth'
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
require'leap'.add_default_mappings()
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c","python","ruby", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require("luasnip/loaders/from_vscode").lazy_load()
local lsp = require('lsp-zero')
lsp.preset('recommended')
--require'nvim-treesitter.configs'.setup {
--  markid = { enable = true }
--}
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
