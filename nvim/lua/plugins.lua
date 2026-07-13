--------------------------
-- Package management --
---------------------------
vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" }, -- Easily install and manage LSP servers, DAP servers, linters, and formatters.
	{ src = "https://github.com/neovim/nvim-lspconfig" }, -- collection of LSP server configurations
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" }, -- makes it easier to use both mason and nvim-lspconfig together
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" }, -- do not need to call setup for nvim-treesitter to work using default values.
})
require("mason").setup()
require("mason-lspconfig").setup()
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = { version = "LuaJIT", path = vim.split(package.path, ";") },
			diagnostics = { globals = { "vim" } },
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			format = { enable = true },
		},
	},
})
vim.lsp.config("tinymist", {
	settings = {
		exportPdf = "onType",
	},
})
-- vim.lsp.enable({ "lua_ls", "tinymist", "clangd", "marksman" })
--
----------------------
-- Telescope --
----------------------
vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
})

----------------------
-- Others --
----------------------
vim.pack.add({
	{ src = "https://github.com/kylechui/nvim-surround" },
	{ src = "https://github.com/nvim-mini/mini.icons" },
	{ src = "https://github.com/nvim-mini/mini.diff" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/folke/which-key.nvim" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
	{ src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
})
-- require('render-markdown').setup({}) -- only mandatory if you want to set custom options
require("oil").setup({
	columns = {},
})

require("nvim-web-devicons").setup({
	color_icons = true,
	default = true,
	strict = true,
	variant = "light|dark",
	blend = 0,
})
require("mini.icons").setup()
require("mini.diff").setup()
require("which-key").setup({
	icons = {
		mappings = false,
	},
})
require("blink.cmp").setup({
	keymap = {
		preset = "none",
		["<C-e>"] = { "hide", "fallback" },
		["<CR>"] = { "accept", "fallback" },
		-- ["<Tab>"] = { "select_next", "fallback" },
		-- ["<S-Tab>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
		["<Up>"] = { "select_prev", "fallback" },
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
})

-- local lualine_theme = require('lualine_theme');
require("lualine").setup({
	options = {
		icons_enabled = false,
		-- theme = lualine_theme,
		theme = "auto",
		section_separators = "",
		component_separators = "",
		padding = 1,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
			refresh_time = 16, -- ~60fps
			events = {
				"WinEnter",
				"BufEnter",
				"BufWritePost",
				"SessionLoadPost",
				"FileChangedShellPost",
				"VimResized",
				"Filetype",
				"CursorMoved",
				"CursorMovedI",
				"ModeChanged",
			},
		},
	},
	sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {"filename"},
		lualine_x = {"%l/%L"},
		-- lualine_y = {"%l/%L", "progress" },
		lualine_y = {},
		lualine_z = {},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
