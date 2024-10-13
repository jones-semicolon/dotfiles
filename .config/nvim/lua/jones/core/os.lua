-- Use a local variable to avoid global namespace pollution
OS = nil

-- Retrieve the TERM environment variable
local term = os.getenv("TERM")

-- Determine if the system is Windows
local is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1

-- Determine if the system is Unix-like
local is_unix = vim.fn.has("unix") == 1

-- Enhanced detection for Termux by checking for the presence of Termux-specific directories
local is_termux = vim.fn.isdirectory("/data/data/com.termux/") == 1

if is_termux then
  OS = "termux"
elseif is_windows then
  OS = "windows"
elseif is_unix then
  OS = "unix"
else
  OS = "unknown"
end

-- Optional: Print the detected OS for debugging
-- print("Detected OS:", OS)
