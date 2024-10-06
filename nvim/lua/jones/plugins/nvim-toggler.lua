local toggler_status, toggler = pcall(require, "nvim-toggler")

if not toggler_status then
	return
end

toggler.setup({
	inverses = {
		["and"] = "or",
		["-"] = "+",
	},
	remove_default_keybinds = true,
})

vim.keymap.set("n", "<leader><leader>", toggler.toggle)
