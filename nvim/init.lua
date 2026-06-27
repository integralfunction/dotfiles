require('settings')
require('colorscheme')
require('plugins')
require('keymaps')
vim.api.nvim_create_user_command("OpenTypstPdf", function()
	local filepath = vim.api.nvim_buf_get_name(0)
	if filepath:match("%.typ$") then
		local pdf_path = filepath:gsub("%.typ$", ".pdf")
		vim.notify(pdf_path)
		vim.system({ "open", " -a /Applications/sioyek.app ", pdf_path })
	end
end, {})
