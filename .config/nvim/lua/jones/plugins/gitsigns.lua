-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

-- configure/enable gitsigns
gitsigns.setup({
	current_line_blame = true,
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol",
		delay = 1000,
		ignore_whitespace = true,
	},
})
