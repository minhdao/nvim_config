local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  print("Colorschme not found!")
  return
end
