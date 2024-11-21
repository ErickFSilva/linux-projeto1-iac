#!/bin/bash

# Atualizar o sistema
echo "Atualizando os repositórios e o sistema..."
sudo apt update -y && sudo apt upgrade -y

# Instalar o servidor web Apache
echo "Instalando o Apache..."
sudo apt install apache2 -y

# Iniciar e habilitar o Apache
echo "Iniciando e habilitando o Apache no boot..."
sudo systemctl start apache2
sudo systemctl enable apache2

# Criar um arquivo HTML básico
echo "Criando página inicial..."
sudo mkdir -p /var/www/html
echo "<!DOCTYPE html>
<html>
<head>
    <title>Página de Teste</title>
</head>
<body>
    <h1>Servidor Web Provisionado com Sucesso!</h1>
    <p>Este servidor foi configurado automaticamente usando um script Bash.</p>
</body>
</html>" | sudo tee /var/www/html/index.html > /dev/null

# Ajustar permissões (opcional)
echo "Ajustando permissões no diretório web..."
sudo chmod -R 755 /var/www/html

# Configurar firewall para permitir tráfego HTTP
echo "Configurando o firewall para liberar portas HTTP (80)..."
sudo ufw allow 'Apache'

# Exibir status final
echo "Configuração concluída! Verifique o servidor acessando http://<seu_ip> no navegador."