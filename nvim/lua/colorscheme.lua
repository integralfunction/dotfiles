----------------------
-- Colorschemes --
----------------------
vim.pack.add({
	{ src = "https://github.com/ellisonleao/gruvbox.nvim" },
})
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
require("gruvbox").setup({
	overrides = {
		FoldColumn = { bg = "#282828", fg = "#928374" },
	},
})
-- vim.api.nvim_set_hl(0, "FoldColumn", { bg = "#282828", fg = "#928374" })
vim.cmd.colorscheme("gruvbox")
