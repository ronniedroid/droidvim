local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/savq/paq-nvim " .. install_path)
  execute "packadd paq-nvim"
end

local paq = require "paq-nvim"

paq {
  {"nvim-treesitter/nvim-treesitter", run = "<cmd>:TSUpdate"},
  "savq/paq-nvim",
  "ishan9299/modus-theme-vim",
  "tamago324/lir.nvim",
  "numtostr/FTerm.nvim",
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim", --uses popup & plenary
  "nvim-telescope/telescope-project.nvim",
  "hoob3rt/lualine.nvim",
  "kyazdani42/nvim-web-devicons",
  "hrsh7th/nvim-compe",
  "hrsh7th/vim-vsnip",
  "rafamadriz/friendly-snippets",
  "neovim/nvim-lspconfig",
  "kabouzeid/nvim-lspinstall",
  "glepnir/lspsaga.nvim",
  "onsails/lspkind-nvim",
  "jiangmiao/auto-pairs",
  "terrortylor/nvim-comment",
  "romgrk/barbar.nvim",
  "folke/which-key.nvim",
  "mhartington/formatter.nvim"
}
