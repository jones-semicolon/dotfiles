-- import comment plugin safely
local setup, comment = pcall(require, "Comment")
if not setup then
	print("Comment plugin not installed")
	return
end

-- enable comment
comment.setup()
