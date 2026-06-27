local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>fp", function()
	vim.lsp.buf.format()
end, { desc = "format" })

-- vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
-- vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
-- vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
-- vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>ft", ":normal za<CR>", { desc = "Toggle fold under cursor" })
vim.keymap.set("n", "<leader>up", ":lua vim.pack.update(nil, { force = true })<CR>", { desc = "Update plugins" })

vim.keymap.set("v", "$", "g_")

vim.keymap.set({ "n", "v" }, "<leader>s", "<ESC>:write<CR>", { desc = "save file" })
vim.keymap.set("n", "<leader>o", ":Oil<CR>", { desc = "open file explorer" })
vim.keymap.set("n", "<leader>p", ":OpenTypstPdf<CR>", { desc = "open pdf file for typst" })
-- vim.keymap.set("n", "<leader>up", vim.pack.update(), { desc = "open pdf file for typst" })

vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, { desc = "diagnostic messages" })
-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ wrap = true, count = -1 })
end, { desc = "prev diagnostic" })
vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ wrap = true, count = 1 })
end, { desc = "next diagnostic" })

-- vim.keymap.set("i", "<C-g>s", "<Plug>(nvim-surround-insert)", {
-- 	desc = "Add a surrounding pair around the cursor (insert mode)",
-- })
-- vim.keymap.set("i", "<C-g>S", "<Plug>(nvim-surround-insert-line)", {
-- 	desc = "Add a surrounding pair around the cursor, on new lines (insert mode)",
-- })
-- vim.keymap.set("n", "ys", "<Plug>(nvim-surround-normal)", {
-- 	desc = "Add a surrounding pair around a motion (normal mode)",
-- })
-- vim.keymap.set("n", "yss", "<Plug>(nvim-surround-normal-cur)", {
-- 	desc = "Add a surrounding pair around the current line (normal mode)",
-- })
-- vim.keymap.set("n", "yS", "<Plug>(nvim-surround-normal-line)", {
-- 	desc = "Add a surrounding pair around a motion, on new lines (normal mode)",
-- })
-- vim.keymap.set("n", "ySS", "<Plug>(nvim-surround-normal-cur-line)", {
-- 	desc = "Add a surrounding pair around the current line, on new lines (normal mode)",
-- })
-- vim.keymap.set("x", "S", "<Plug>(nvim-surround-visual)", {
-- 	desc = "Add a surrounding pair around a visual selection",
-- })
-- vim.keymap.set("x", "gS", "<Plug>(nvim-surround-visual-line)", {
-- 	desc = "Add a surrounding pair around a visual selection, on new lines",
-- })
-- vim.keymap.set("n", "ds", "<Plug>(nvim-surround-delete)", {
-- 	desc = "Delete a surrounding pair",
-- })
-- vim.keymap.set("n", "cs", "<Plug>(nvim-surround-change)", {
-- 	desc = "Change a surrounding pair",
-- })
-- vim.keymap.set("n", "cS", "<Plug>(nvim-surround-change-line)", {
-- 	desc = "Change a surrounding pair, putting replacements on new lines",
-- })

vim.o.langmap =
	"АБЦДЕФГЧИЙКЛМНОПЯРСТУВШХЫЗ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,абцдефгчийклмнопярстувшхыз;abcdefghijklmnopqrstuvwxyz"
