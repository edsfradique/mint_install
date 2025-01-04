#!/bin/bash

# Backup do arquivo original sources.list
echo "Criando backup do sources.list original..."
cp /etc/apt/sources.list /etc/apt/sources.list.bak

# Substituindo o conteúdo de sources.list pelos novos repositórios
echo "Substituindo o conteúdo do sources.list..."
cat <<EOL > /etc/apt/sources.list
# Repositórios do Mint e Debian
deb [trusted=yes] http://packages.linuxmint.com faye main upstream import backport
deb http://debian.pop-sc.rnp.br/debian bookworm main contrib non-free non-free-firmware
deb http://debian.pop-sc.rnp.br/debian bookworm-updates main contrib non-free non-free-firmware
deb http://security.debian.org/ bookworm-security main contrib non-free non-free-firmware
deb http://debian.pop-sc.rnp.br/debian bookworm-backports main contrib non-free non-free-firmware
EOL

# Atualizando o sistema com os novos repositórios
echo "Atualizando a lista de pacotes..."
apt update

echo "Substituição do repositório concluída com sucesso!"
