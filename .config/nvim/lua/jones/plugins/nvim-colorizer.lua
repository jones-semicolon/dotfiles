local colorizer_status, colorizer = pcall(require, "colorizer")

if not colorizer_status then
  print("colorizer not installed")
  return
end

colorizer.setup({})
