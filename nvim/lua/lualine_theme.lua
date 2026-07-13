-- stylua: ignore
local colors = {
	color5  = '#f4f4f4',
	color8  = '#f4f4f4',
	color9  = '#1c1c1c',
	color10 = '#f4f4f4',
	color11 = '#f4f4f4',
	color0  = '#1c1c1c',
	color1  = '#f4f4f4',
	color2  = '#f4f4f4',
}

return {
	replace = {
		b = { fg = colors.color0, bg = colors.color1 },
		a = { fg = colors.color0, bg = colors.color2, gui = "bold" },
	},
	visual = {
		b = { fg = colors.color0, bg = colors.color1 },
		a = { fg = colors.color0, bg = colors.color5, gui = "bold" },
	},
	normal = {
		b = { fg = colors.color0, bg = colors.color1 },
		a = { fg = colors.color0, bg = colors.color8, gui = "bold" },
		c = { fg = colors.color9, bg = colors.color10 },
	},
	inactive = {
		b = { fg = colors.color9, bg = colors.color10 },
		a = { fg = colors.color9, bg = colors.color10, gui = "bold" },
		c = { fg = colors.color9, bg = colors.color10 },
	},
	insert = {
		b = { fg = colors.color0, bg = colors.color1 },
		a = { fg = colors.color0, bg = colors.color11, gui = "bold" },
	},
}
