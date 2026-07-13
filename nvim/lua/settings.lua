local o = vim.o
local a = vim.api

-- Highlight current location
o.cursorline = true
o.cursorlineopt = "screenline"
o.cursorcolumn = false

-- Disable 'How to Disable Mouse'
a.nvim_command('aunmenu PopUp.How-to\\ disable\\ mouse')
a.nvim_command('aunmenu PopUp.-1-')

-- Show line number and dynamically activate relative line numbers
o.number = true

-- No line wrap and better scrolling
o.wrap = false
o.scrolloff = 3

-- Persistent undo between sessions
o.undofile = true

-- Disable unneeded backup
o.backup = false
o.writebackup = false

-- Improve search
o.ignorecase = true
o.smartcase = true
o.hlsearch = false

-- Shows the effects of a substitution in another panel
o.inccommand = "split"

-- Allow code folding
o.foldenable = false
-- vim.wo.foldcolumn = "1"
-- vim.wo.foldmethod = "expr"
-- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- vim.o.foldexpr = "nvim_treesitter#foldexpr()"
--
-- o.foldlevelstart = 99
-- o.foldnestmax = 15
-- o.foldtext = ""
-- o.signcolumn = "yes"

o.cmdheight = 0

-- Better indents
o.autoindent = true
o.copyindent = true
o.breakindent = true

-- Better tabs
o.tabstop = 4
o.shiftwidth = 4

-- Spell check
o.spelllang = "en_us"
o.spell = false

-- Use system clipboard
o.clipboard = "unnamedplus"

-- Decrease update time
o.updatetime = 500
o.timeoutlen = 300

-- Set max number of items in popup menus
o.pumheight = 5

-- Highlight on yank
local highlight_group = a.nvim_create_augroup("YankHighlight", { clear = true })
a.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

vim.g.mapleader = " "
