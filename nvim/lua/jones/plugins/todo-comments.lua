local todo_status, todo = pcall(require, "todo-comments")

if not todo_status then
	return
end

todo.setup()

-- keymaps
vim.keymap.set("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
