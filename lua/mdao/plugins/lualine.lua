local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_nightfly = require("lualine.themes.nightfly")

local my_colors = {
  blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
}


lualine_nightfly.normal.a.bg = my_colors.blue
lualine_nightfly.insert.a.bg = my_colors.green
lualine_nightfly.visual.a.bg = my_colors.violet
lualine_nightfly.command = {
	a = {
		gui = "bold",
		bg = my_colors.yellow,
		fg = my_colors.black, -- black
	},
}

lualine.setup({
  options = {
		theme = lualine_nightfly,
	},
})

