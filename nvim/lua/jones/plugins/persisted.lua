local persisted_status, persisted = pcall(require, "persisted")

if not persisted_status then
	return
end

persisted.setup()
vim.keymap.set("n", "<leader>fe", "<cmd>Telescope persisted<CR>")
