source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/themes/gruvbox.vim
source $HOME/.config/nvim/general/settings.vim

set completeopt=menuone,noinsert,noselect
set shortmess+=c
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

nmap <C-e> :NERDTreeToggle<CR>

lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach } 
lua require'lspconfig'.pyls.setup{ executable="~/.local/bin/pyls"}
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
