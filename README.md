# Instruções de uso

- Instale as dependências:

> Debian e derivados:
```bash
apt install git xclip wget ripgrep curl build-essential
```

> Arch:
```bash
pacman -Sy git xclip wget ripgrep
```

## Instalando o Neovim.
- Para instalar o Neovim na versão mais recente, entre como super usúario:
```bash
su
```

- Depois execute os seguinte comandos:
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux64.tar.gz
```

- Saida do super usúario:
```bash
exit
```

- Adicione o diretório do nvim ao $PATH:
```bash
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> .bashrc
source .bashrc
```

## Instalando fonte e criando diretório de configuração. 
- Execute o script para obter apenas a Nerd Font e criar o diretório `$HOME/.config/nvim`:
```bash
wget -qO - https://raw.githubusercontent.com/ViniAman01/seeng-nvim-config/refs/heads/main/install_nerdfont.sh | bash
```


## Instalando todas as configurações.
- Clone o repositório em `$HOME/.config/nvim` e depois execute o script para obter a Nerd Font:
```bash
git clone https://github.com/ViniAman01/seeng-nvim-config $HOME/.config/nvim
```
