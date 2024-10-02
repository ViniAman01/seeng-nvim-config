vim.opt.backup = false                           -- Cria um arquivo backup.
vim.opt.clipboard = "unnamedplus"               -- Permite o neovim acessar a clipboard do sistema.
vim.opt.cmdheight = 1                           -- Altura da linha de comando.
vim.opt.fileencoding = "utf-8"                  -- Definindo encoding.
vim.opt.hlsearch = false                        -- Highligth(Destacar) todas as ocorrencias de uma busca.
vim.opt.ignorecase = true                       -- Ignora case em buscas.
vim.opt.mouse = "a"                             -- Permite usar o mouse no neovim.
vim.opt.showtabline = 10                        -- Sempre mostra a linha de tabs abertas. 
vim.opt.smartcase = true                        -- Case inteligente.
vim.opt.smartindent = true                      -- Indentacao inteligente.
vim.opt.splitbelow = true                       -- Forca todos os splits horizontais irem para baixo.
vim.opt.splitright = true                       -- Forca todos os splits verticais irem para cima.
vim.opt.swapfile = false                        -- Remove a criação de swapfiles.
vim.opt.termguicolors = true                    -- Ativa cores de terminal.
vim.opt.timeoutlen = 1000                       -- Tempo para esperar um KeyMap.
vim.opt.undofile = true                         -- Ativa criacao de arquivo
vim.opt.updatetime = 300                        -- Reduz o delay das completions (4000ms default)
vim.opt.writebackup = false                     -- Impede a edicao, caso outro programa esteja editando o mesmo arquivo.
vim.opt.expandtab = true                        -- Converte TABS para espacos.
vim.opt.shiftwidth = 2                          -- Numero de espacos para cada indentacao.
vim.opt.tabstop = 2                             -- Insere 2 espacos para um TAB.
vim.opt.cursorline = true                       -- Highligth linha atual.
vim.opt.number = true                           -- Exibe numero de linhas.
vim.opt.relativenumber = true                   -- Exibe numero de linhas relativas.
vim.opt.numberwidth = 2                         -- Define o numero de colunas para os numeros das linha.
vim.opt.signcolumn = "yes"                      -- Sempre move o texto de cada linha, para exibir a coluna de sinais. 
vim.opt.wrap = false                            -- Exibe uma linha longa em multiplas linhas.
vim.opt.scrolloff = 15                          -- Desativa o scroll ate atingir 10 linhas da extremidade da tela.
vim.opt.sidescrolloff = 8                       -- Desativa o sidescroll ate atingir 10 linhas da extremidade da tela.

vim.opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
