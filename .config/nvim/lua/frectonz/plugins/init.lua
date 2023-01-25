local packer = require "packer"

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins/init.lua source <afile> | PackerSync
  augroup end
]]

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

packer.startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used in lots of plugins
  use "kyazdani42/nvim-web-devicons"

  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { opt = true }
  }

  -- Colorschemes
  use "lunarvim/darkplus.nvim"
  use 'folke/tokyonight.nvim'
  use 'kvrohit/mellow.nvim'

  -- File Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use "j-hui/fidget.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use "p00f/nvim-ts-rainbow"

  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter

  -- Comment setup
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- bufferline
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"

  -- Games
  use "seandewar/killersheep.nvim"
  use 'eandrju/cellular-automaton.nvim'

  -- rust stuff
  use 'simrat39/rust-tools.nvim'
  use 'saecki/crates.nvim'
end)
