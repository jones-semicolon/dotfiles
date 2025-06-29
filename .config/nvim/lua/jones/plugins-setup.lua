-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

  -- use("folke/tokyonight.nvim") -- preferred colorscheme
  use({ "catppuccin/nvim", as = "catppuccin" })

  -- essential plugins
  use("tpope/vim-surround")              -- add, delete, change surroundings (it's awesome)
  use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

  -- commenting with gc
  use("numToStr/Comment.nvim")

  -- file explorer
  use("nvim-tree/nvim-tree.lua")

  -- vs-code like icons
  use("nvim-tree/nvim-web-devicons")

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })       -- fuzzy finder

  -- autocompletion
  use("hrsh7th/nvim-cmp")  -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path")  -- source for file system paths

  -- snippets
  use("L3MON4D3/LuaSnip")        -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use({
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip").filetype_extend("javascriptreact", { "html" })
      require("luasnip").filetype_extend("vue", { "html" })
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  })                                      -- useful snippets

  use("williamboman/mason.nvim")          -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

  -- configuring lsp servers
  use("neovim/nvim-lspconfig") -- easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use({
    "nvimdev/lspsaga.nvim",
    after = "nvim-lspconfig",
    config = function()
      require("lspsaga").setup({})
    end,
  })
  -- use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  -- formatting & linting
  use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  use("jayp0521/mason-null-ls.nvim")    -- bridges gap b/w mason & null-ls

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- auto closing
  use("windwp/nvim-autopairs")                                -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side
  use({ "j-hui/fidget.nvim", tag = "v1.0.0" })
  use("mg979/vim-visual-multi")
  use({ "ray-x/lsp_signature.nvim" })
  use({ "akinsho/bufferline.nvim", tag = "*" })
  use({
    "fedepujol/move.nvim",
    config = function()
      require("move").setup({})
    end,
  })
  use("tpope/vim-fugitive")
  use({
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("toggleterm").setup({
        direction = "float",
        open_mapping = [[<!-- <c-x> -->]],
      })
    end,
  })
  use({ "gcmt/wildfire.vim" })
  use("NvChad/nvim-colorizer.lua")
  use({ "RRethy/vim-illuminate" })
  use("andweeb/presence.nvim")
  use({ "phaazon/hop.nvim", branch = "v2" })
  use({ "folke/todo-comments.nvim" })
  use({ "nguyenvukhang/nvim-toggler" })
  use({
    "vuki656/package-info.nvim",
    requires = "MunifTanjim/nui.nvim",
  })
  use({
    "bennypowers/nvim-regexplainer",
    config = function()
      require("regexplainer").setup()
    end,
  })
  use({
    "olimorris/persisted.nvim",
    config = function()
      require("persisted").setup()
    end,
  })
  use("folke/trouble.nvim")
  use({
    "gelguy/wilder.nvim",
  })
  use("anuvyklack/hydra.nvim")
  use("folke/neodev.nvim")
  use("udalov/kotlin-vim")
  use("simaxme/java.nvim")
  use("mistweaverco/screenshot.nvim")
  use({
    "ziontee113/color-picker.nvim",
    config = function()
      require("color-picker")
    end,
  })
  use({
    "nvimtools/none-ls.nvim",
    config = function()
      require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })
  use({ "Jezda1337/nvim-html-css" })
  use({ "mattn/emmet-vim" })
  use({
    "luckasRanarison/tailwind-tools.nvim",
    config = function()
      require("tailwind-tools").setup()
    end,
  })
  use({
    "roobert/tailwindcss-colorizer-cmp.nvim",
    -- optionally, override the default options:
    config = function()
      require("tailwindcss-colorizer-cmp").setup({
        color_square_width = 2,
      })
    end,
  })
  -- use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })
  use({
    "bbjornstad/pretty-fold.nvim",
  })
  use({
    "razak17/tailwind-fold.nvim",
    opts = {},
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("tailwind-fold").setup({ ft = { "html", "twig" } })
    end,
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)
