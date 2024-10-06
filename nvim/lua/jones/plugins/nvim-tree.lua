-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
	sync_root_with_cwd = true,
	auto_reload_on_write = true,
	disable_netrw = false,
	hijack_netrw = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	view = {
		width = 28,
		-- signcolumn = "number",
		centralize_selection = true,
	},
	renderer = {
		indent_markers = {
			enable = true,
			inline_arrows = true,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				bottom = "─",
				none = " ",
			},
		},
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},
	actions = {
		open_file = {
			resize_window = true,
			window_picker = {
				enable = true,
			},
			quit_on_open = true,
		},
		change_dir = {
			enable = true,
			global = true,
		},
	},
	filters = {
		dotfiles = true,
	},
})

vim.api.nvim_create_autocmd({ "WinEnter", "BufWinEnter" }, {
	pattern = "NvimTree*",
	callback = function()
		local def = vim.api.nvim_get_hl_by_name("Cursor", true)
		vim.api.nvim_set_hl(0, "Cursor", vim.tbl_extend("force", def, { blend = 100 }))
		vim.opt.guicursor:append("a:Cursor/lCursor")
	end,
})

vim.api.nvim_create_autocmd({ "BufLeave", "WinClosed" }, {
	pattern = "NvimTree*",
	callback = function()
		local def = vim.api.nvim_get_hl_by_name("Cursor", true)
		vim.api.nvim_set_hl(0, "Cursor", vim.tbl_extend("force", def, { blend = 0 }))
		vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
	end,
})
