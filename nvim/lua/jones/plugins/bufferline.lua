local buffline_status, buffline = pcall(require, "bufferline")

if not buffline_status then
	return
end

buffline.setup({
	options = {
		style_preset = buffline.style_preset.no_bold,
		offsets = {
			{
				filetype = "NvimTree",
				text = function()
					local file = vim.fn.getcwd():gsub(".*(%/.*)", "%1")
					return file
				end,
				text_align = "center",
				separator = true,
			},
		},
		name_formatter = function(buf)
			local file = buf.name:gsub("%..*$", "")
			if file == "" then
				return buf.name
			end
			return file
		end,
		show_buffer_icons = false,
		tab_size = math.floor(vim.fn.winwidth(0) / 3 - 4),
		max_name_length = math.floor(vim.fn.winwidth(0) / 5),
		truncate_names = true,
	},
})

local keymap = vim.keymap
local config = { noremap = true, silent = true }
-- keymaps
keymap.set("n", "<leader>1", '<cmd>lua require("bufferline").go_to(1, true)<cr>', config)
keymap.set("n", "<leader>2", '<cmd>lua require("bufferline").go_to(2, true)<cr>', config)
keymap.set("n", "<leader>3", '<cmd>lua require("bufferline").go_to(3, true)<cr>', config)
keymap.set("n", "<leader>4", '<cmd>lua require("bufferline").go_to(4, true)<cr>', config)
keymap.set("n", "<leader>5", '<cmd>lua require("bufferline").go_to(5, true)<cr>', config)
keymap.set("n", "<leader>6", '<cmd>lua require("bufferline").go_to(6, true)<cr>', config)
keymap.set("n", "<leader>7", '<cmd>lua require("bufferline").go_to(7, true)<cr>', config)
keymap.set("n", "<leader>8", '<cmd>lua require("bufferline").go_to(8, true)<cr>', config)
keymap.set("n", "<leader>9", '<cmd>lua require("bufferline").go_to(9, true)<cr>', config)
keymap.set("n", "<leader>,", "<Cmd>BufferLineCyclePrev<CR>", config)
keymap.set("n", "<leader>.", "<Cmd>BufferLineCycleNext<CR>", config)
keymap.set("n", "<leader>0", "<Cmd>BufferLinePick<CR>", config)
keymap.set("n", "<leader>c", "<Cmd>bdelete! %<CR>", config)
