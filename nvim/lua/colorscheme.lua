----------------------
-- Colorschemes --
----------------------
vim.pack.add({
	{ src = "https://github.com/ellisonleao/gruvbox.nvim" },
	{ src = "https://github.com/nyoom-engineering/oxocarbon.nvim" },
})

vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme "oxocarbon"

-- -- Detect system appearance (macOS only)
-- local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
-- local result = handle:read("*a")
-- handle:close()
--
-- local is_dark = result:match("Dark") ~= nil
--
-- -- Decide flavour and background based on appearance
-- local flavour = (is_dark and "kanagawa-dragon") or "catppuccin-nvim"
--
-- require("kanagawa")
-- require("catppuccin").setup({
--     flavour = "latte",
--     color_overrides = {
--         latte = {
--             base = "#eff1f5",
--             -- mantle = "#eff1f5",
--         },
--     }
-- })
-- require("gruvbox").setup({
	-- palette_overrides = {
	-- 	light0_hard = "#f4f4f4",
	-- 	light0 = "#f4f4f4",
	-- 	light0_soft = "#f4f4f4",
	-- 	light1 = "#e5e5e5",
	-- 	light2 = "#969696",
	-- 	light3 = "#969696",
	-- 	light4 = "#969696",
	-- },
	-- overrides = {
	-- 	FoldColumn = { bg = "#282828", fg = "#928374" },
	-- },
-- })
-- vim.api.nvim_set_hl(0, "FoldColumn", { bg = "#282828", fg = "#928374" })
-- vim.cmd.colorscheme("gruvbox")
