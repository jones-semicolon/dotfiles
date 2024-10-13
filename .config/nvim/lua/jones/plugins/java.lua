local java_status, java = pcall(require, "java")

if not java_status then
	return
end

java.setup()
