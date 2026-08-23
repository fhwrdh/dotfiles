local keymap = vim.keymap

-- Exit insert mode with jj
keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Decrease window height" })
keymap.set("n", "<C-Down>", ":resize +2<CR>", { desc = "Increase window height" })
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Buffer navigation
keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })

-- Move text up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text up" })

-- Stay in indent mode
keymap.set("v", "<", "<gv", { desc = "Indent left" })
keymap.set("v", ">", ">gv", { desc = "Indent right" })

-- Better paste (don't yank replaced text)
keymap.set("v", "p", '"_dP', { desc = "Paste without yanking" })

-- Clear search highlight
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Better line joining
keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })

-- Center screen on navigation
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
keymap.set("n", "n", "nzzzv", { desc = "Next search result" })
keymap.set("n", "N", "Nzzzv", { desc = "Previous search result" })

-- Quick save (all buffers)
keymap.set("n", "<leader>w", "<cmd>wa<CR>", { desc = "Save all buffers" })

-- Quick quit
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- Diagnostic keymaps
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic error messages" })
keymap.set("n", "<leader>Q", vim.diagnostic.setloclist, { desc = "Open diagnostic quickfix list" })
