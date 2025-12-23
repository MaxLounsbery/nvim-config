--telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- comment toggle
vim.keymap.set({ "n", "v" }, "<leader>/", ":CommentToggle<cr>")

--show lsp errors
vim.keymap.set({ "n", "i" }, "<C-e>", ":lua vim.diagnostic.open_float()<cr>")

--format code using LSP
vim.keymap.set("n", "<leader>fmd", vim.lsp.buf.format)

-- buffers
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<cr>")
vim.keymap.set("n", "<leader>w", ":NvimTreeClose<cr>")
vim.keymap.set("n", "<leader>t", ":BufferLinePick<cr>")
vim.keymap.set("n", "<Left>", ":bp<cr>")
vim.keymap.set("i", "<Left>", "<Esc>:bp<cr>")
vim.keymap.set("n", "<Right>", ":bn<cr>")
vim.keymap.set("i", "<Right>", "<Esc>:bn<cr>")
vim.keymap.set("n", "<leader>d", ":bd!<cr>")
vim.keymap.set("n", "<C-w", ":bd!<cr>")
vim.keymap.set("n", "<C-Right>", ":BufferLineCloseRight<cr>")
vim.keymap.set("n", "<C-Left>", ":BufferLineCloseLeft<cr>")
vim.keymap.set("n", "<C-Down>", ":BufferLineCloseOthers<cr>")

-- persistence binds
vim.keymap.set("n", "<leader>pd", function() require("persistence").load() end)
vim.keymap.set("n", "<leader>ps", function() require("persistence").select() end)
vim.keymap.set("n", "<leader>pl", function() require("persistence").load({ last = true }) end)

-- floating lsp windows
vim.keymap.set("n", "<leader>i", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })
-- vim.keymap.set("n", "<leader>ht", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", {noremap=true})
-- vim.keymap.set("n", "<leader>hi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", {noremap=true})
-- vim.keymap.set("n", "<leader>hd", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", {noremap=true})
-- vim.keymap.set("n", "<leader>hr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", {noremap=true})
vim.keymap.set("n", "<leader><leader>", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })
