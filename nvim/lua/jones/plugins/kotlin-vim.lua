local kotlin_status, kotlin = pcall(require, "kotlin")

if not kotlin_status then
	return
end

kotlin.setup({})
