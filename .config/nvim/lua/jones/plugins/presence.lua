local presence_status, presence = pcall(require, "presence")

if not presence_status then
	print("Presence not installed")
end

presence.setup({})
