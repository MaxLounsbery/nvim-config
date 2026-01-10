-- space bar leader
vim.g.mapleader = " "

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- python-black formatting
vim.keymap.set("n", "<leader>fmp", ":w<cr>:silent !black %<cr>")

-- ignore capitalization mistakes
vim.cmd("ca W w")
vim.cmd("ca Q q")
vim.cmd("ca WQ wq")
vim.cmd("ca Wq wq")

-- windows
vim.keymap.set("n", "<leader><left>", ":vertical resize +20<cr>")
vim.keymap.set("n", "<leader><right>", ":vertical resize -20<cr>")
vim.keymap.set("n", "<leader><up>", ":resize +10<cr>")
vim.keymap.set("n", "<leader><down>", ":resize -10<cr>")

-- unhilight
vim.keymap.set("n", "<leader>h", ":noh<cr>")

-- Center the screen after scrolling up/down with Ctrl-u/d
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Center the screen on the next/prev search result with n/N
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste in visual mode without yanking replaced text
vim.keymap.set("x", "p", [["_dP]])

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- yank line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- map Ctrl-c to Escape
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", ":q<cr>")

-- move lines up/down more quickly
vim.keymap.set({ "v", "n", }, "<Down>", "10j")
vim.keymap.set({ "v", "n", }, "<Up>", "10k")
vim.keymap.set({ "v", "n", }, "<C-j>", "5j")
vim.keymap.set({ "v", "n", }, "<C-k>", "5k")

-- search and replace the word under cursor in the file with <leader>s
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- edit config
vim.keymap.set("n", "<leader>c", ":e ~/.config/nvim<cr>")

-- better terminal escape
vim.keymap.set("t", "<esc>", "<Esc> <C-\\><C-n>", { noremap = true })

-- change HJKL to navigate panes
vim.keymap.set({ "n", "v" }, "H", "<C-w>h")
vim.keymap.set({ "n", "v" }, "J", "<C-w>j")
vim.keymap.set({ "n", "v" }, "K", "<C-w>k")
vim.keymap.set({ "n", "v" }, "L", "<C-w>l")

--view man page
vim.keymap.set("n", "<C-i>", "K", { noremap = true })
vim.keymap.set("n", "<Tab>", "<C-i>", { noremap = true })

--easy quit all
vim.cmd("command Leave wall|qa!")
