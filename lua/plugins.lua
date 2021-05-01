local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/savq/paq-nvim " .. install_path)
    execute "packadd paq-nvim"
end

local paq = require('paq-nvim').paq

paq 'savq/paq-nvim'
paq 'ishan9299/modus-theme-vim'

paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim' --uses popup & plenary

paq 'hoob3rt/lualine.nvim'
paq 'kyazdani42/nvim-web-devicons'

paq 'kyazdani42/nvim-tree.lua'


paq 'hrsh7th/nvim-compe'
paq 'hrsh7th/vim-vsnip'
paq 'rafamadriz/friendly-snippets'

paq 'neovim/nvim-lspconfig'

paq 'kabouzeid/nvim-lspinstall'

paq 'glepnir/lspsaga.nvim'

paq 'onsails/lspkind-nvim'

paq 'jiangmiao/auto-pairs'
paq 'terrortylor/nvim-comment'
paq 'Vhyrro/neorg'

paq 'romgrk/barbar.nvim'

paq "folke/which-key.nvim"