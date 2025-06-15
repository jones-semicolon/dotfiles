-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.1731601260/share/lua/5.1/?.lua;/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.1731601260/share/lua/5.1/?/init.lua;/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.1731601260/lib/luarocks/rocks-5.1/?.lua;/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.1731601260/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.1731601260/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["color-picker.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17color-picker\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/color-picker.nvim",
    url = "https://github.com/ziontee113/color-picker.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    config = { "\27LJ\2\n√\1\0\0\4\0\t\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0'\2\a\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\1\2\0\0\thtml\bvue\1\2\0\0\thtml\20javascriptreact\20filetype_extend\fluasnip\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["hydra.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/hydra.nvim",
    url = "https://github.com/anuvyklack/hydra.nvim"
  },
  ["java.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/java.nvim",
    url = "https://github.com/simaxme/java.nvim"
  },
  ["kotlin-vim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/kotlin-vim",
    url = "https://github.com/udalov/kotlin-vim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flspsaga\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/nvimdev/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "https://github.com/jayp0521/mason-null-ls.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["move.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\tmove\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["neodev.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  ["none-ls.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/none-ls.nvim",
    url = "https://github.com/nvimtools/none-ls.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-html-css"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-html-css",
    url = "https://github.com/Jezda1337/nvim-html-css"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-regexplainer"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17regexplainer\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-regexplainer",
    url = "https://github.com/bennypowers/nvim-regexplainer"
  },
  ["nvim-toggler"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-toggler",
    url = "https://github.com/nguyenvukhang/nvim-toggler"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["package-info.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/package-info.nvim",
    url = "https://github.com/vuki656/package-info.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["persisted.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14persisted\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/persisted.nvim",
    url = "https://github.com/olimorris/persisted.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["presence.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  ["pretty-fold.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/pretty-fold.nvim",
    url = "https://github.com/bbjornstad/pretty-fold.nvim"
  },
  ["screenshot.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/screenshot.nvim",
    url = "https://github.com/mistweaverco/screenshot.nvim"
  },
  ["tailwind-fold.nvim"] = {
    config = { "\27LJ\2\n_\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\aft\1\0\1\aft\0\1\3\0\0\thtml\ttwig\nsetup\18tailwind-fold\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/tailwind-fold.nvim",
    url = "https://github.com/razak17/tailwind-fold.nvim"
  },
  ["tailwind-tools.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19tailwind-tools\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/tailwind-tools.nvim",
    url = "https://github.com/luckasRanarison/tailwind-tools.nvim"
  },
  ["tailwindcss-colorizer-cmp.nvim"] = {
    config = { "\27LJ\2\nc\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\23color_square_width\3\2\nsetup\30tailwindcss-colorizer-cmp\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/tailwindcss-colorizer-cmp.nvim",
    url = "https://github.com/roobert/tailwindcss-colorizer-cmp.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nk\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\14direction\nfloat\17open_mapping\19<!-- <c-x> -->\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-ReplaceWithRegister"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-ReplaceWithRegister",
    url = "https://github.com/inkarkat/vim-ReplaceWithRegister"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["wilder.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  },
  ["wildfire.vim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/wildfire.vim",
    url = "https://github.com/gcmt/wildfire.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-regexplainer
time([[Config for nvim-regexplainer]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17regexplainer\frequire\0", "config", "nvim-regexplainer")
time([[Config for nvim-regexplainer]], false)
-- Config for: none-ls.nvim
time([[Config for none-ls.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fnull-ls\frequire\0", "config", "none-ls.nvim")
time([[Config for none-ls.nvim]], false)
-- Config for: tailwind-tools.nvim
time([[Config for tailwind-tools.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19tailwind-tools\frequire\0", "config", "tailwind-tools.nvim")
time([[Config for tailwind-tools.nvim]], false)
-- Config for: persisted.nvim
time([[Config for persisted.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14persisted\frequire\0", "config", "persisted.nvim")
time([[Config for persisted.nvim]], false)
-- Config for: tailwind-fold.nvim
time([[Config for tailwind-fold.nvim]], true)
try_loadstring("\27LJ\2\n_\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\aft\1\0\1\aft\0\1\3\0\0\thtml\ttwig\nsetup\18tailwind-fold\frequire\0", "config", "tailwind-fold.nvim")
time([[Config for tailwind-fold.nvim]], false)
-- Config for: color-picker.nvim
time([[Config for color-picker.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17color-picker\frequire\0", "config", "color-picker.nvim")
time([[Config for color-picker.nvim]], false)
-- Config for: move.nvim
time([[Config for move.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\tmove\frequire\0", "config", "move.nvim")
time([[Config for move.nvim]], false)
-- Config for: tailwindcss-colorizer-cmp.nvim
time([[Config for tailwindcss-colorizer-cmp.nvim]], true)
try_loadstring("\27LJ\2\nc\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\23color_square_width\3\2\nsetup\30tailwindcss-colorizer-cmp\frequire\0", "config", "tailwindcss-colorizer-cmp.nvim")
time([[Config for tailwindcss-colorizer-cmp.nvim]], false)
-- Config for: friendly-snippets
time([[Config for friendly-snippets]], true)
try_loadstring("\27LJ\2\n√\1\0\0\4\0\t\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0'\2\a\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\1\2\0\0\thtml\bvue\1\2\0\0\thtml\20javascriptreact\20filetype_extend\fluasnip\frequire\0", "config", "friendly-snippets")
time([[Config for friendly-snippets]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nk\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\14direction\nfloat\17open_mapping\19<!-- <c-x> -->\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-ts-autotag ]]
vim.cmd [[ packadd nvim-lspconfig ]]
vim.cmd [[ packadd lspsaga.nvim ]]

-- Config for: lspsaga.nvim
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
