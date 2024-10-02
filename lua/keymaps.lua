local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.keymap.set

-- Remap tecla de espaco como leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modos
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Melhorar navegacao entre janelas 
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Redimensionar com setas
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navegar entre buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Editar Buffers
keymap("n", "<Leader>bc", ":BufferLineCloseOthers<CR>", opts)

-- Salvar e Sair
keymap("n", "<Leader>w", ":w<CR>", opts)
keymap("n", "<Leader>q", ":q<CR>", opts)

-- Visual --

-- Mantem modo de indentacao
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move linha acima e abaixo
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --

-- Move bloco de texto entre linhas
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Terminal --

keymap("t", "<F7>", '<Cmd>execute v:count . "ToggleTerm"<CR>', term_opts)
keymap("t", "<ESC>", '<Cmd>execute v:count . "ToggleTerm"<CR>', term_opts)
keymap("n", "<F7>", '<Cmd>execute v:count . "ToggleTerm"<CR>', term_opts)
keymap("n", "<Leader>th", ":ToggleTerm direction=horizontal size=10<CR>", opts)
keymap("n", "<Leader>tv", ":ToggleTerm direction=vertical size=40<CR>", opts)
keymap("n", "<Leader>tf", ":ToggleTerm direction=float<CR>", opts)

-- Melhor navegacao no terminal
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
