#!/bin/bash
# Script do aluno Erick Ferreira da Silva

echo ""
echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo ""
echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo ""
echo "Criando os usuários do grupo GRP_ADM..."

useradd carlos -c "Carlos Silva" -m -s /bin/bash -p `openssl passwd -1 senha123` -G GRP_ADM
useradd maria -c "Maria Silva" -m -s /bin/bash -p `openssl passwd -1 senha123` -G GRP_ADM
useradd joao -c "João Silva" -m -s /bin/bash -p `openssl passwd -1 senha123` -G GRP_ADM

echo ""
echo "Criando os usuários do grupo GRP_VEN..."

useradd debora -c "Debora Silva" -m -s /bin/bash -p `openssl passwd -1 senha123` -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p `openssl passwd -1 senha123` -G GRP_VEN
useradd roberto -c "Roberto Silva" -m -s /bin/bash -p `openssl passwd -1 senha123` -G GRP_VEN

echo ""
echo "Criando os usuários do grupo GRP_SEC..."

useradd josefina -c "Josefina Silva" -m -s /bin/bash -p `openssl passwd -1 senha123` -G GRP_SEC
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p `openssl passwd -1 senha123` -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p `openssl passwd -1 senha123` -G GRP_SEC

echo ""
echo "Definindo o dono e o grupo nos diretórios..."

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo ""
echo "Adicionando as permissões de acesso aos diretórios..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo ""
echo "FIM DO SCRIPT"
echo ""