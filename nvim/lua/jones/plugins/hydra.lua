local hydra_status, Hydra = pcall(require, "hydra")

if not hydra_status then
	return
end
local pci = require("package-info")
local node_hydra = Hydra({
	name = "NODE",
	config = {
		hint = { "statusline" },
		timeout = 2000,
	},
	mode = { "n", "x", "o" },
	heads = {
		{ "t", pci.toggle, { desc = "Toggle", exit = true } },
		{ "i", "<cmd>PackageInfoInstall<CR>", { desc = "Install", exit = true } },
		{ "u", "<cmd>PackageInfoUpdate<CR>", { desc = "Update", exit = true } },
		{ "d", "<cmd>PackageInfoDelete<CR>", { desc = "Delete", exit = true } },
	},
})

local function get_package()
	if vim.fn.findfile("package.json", vim.fn.getcwd(0, 0)) ~= "" then
		node_hydra:activate()
	end
end

vim.keymap.set("n", "<leader>n", get_package)

Hydra({
	name = "Window",
	config = {
		mode = { "statusline" },
		timeout = 5000,
		invoke_on_body = true,
	},
	mode = { "n", "x", "o" },
	body = "<C-w>",
	heads = {
		{ "j", "<C-w>j" },
		{ "k", "<C-w>k" },
		{ "l", "<C-w>l" },
		{ "h", "<C-w>h", { desc = "MOVE" } },
		{ "+", "<C-w>+" },
		{ "-", "<C-w>-", { desc = "HEIGHT" } },
	},
})
