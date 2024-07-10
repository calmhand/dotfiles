local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",

  { 'kepano/flexoki-neovim', name = 'flexoki' }, -- Theme
  {'daschw/leaf.nvim'},

  { 'nvim-telescope/telescope.nvim', tag = '0.1.6', -- Fuzzy Finder
      dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}, -- Treesitter

  {"nvim-tree/nvim-tree.lua"}, -- File Explorer
  {"nvim-tree/nvim-web-devicons"},

  {"pocco81/auto-save.nvim"}, -- Auto Save

  { 'nvim-lualine/lualine.nvim', -- LuaLine (Status Bar)
  dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  {'williamboman/mason.nvim'}, -- LSP + Helpers
  {'williamboman/mason-lspconfig.nvim'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-nvim-lsp'},

})
