OS = nil
local term = os.getenv("TERM")
local is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1

if term == "xterm-256color" and vim.fn.has("unix") == 1 then
  OS = "termux"
elseif term == is_windows then
  OS = "windows"
else
  OS = nil
end
