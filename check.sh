#!/bin/bash

###############################################
#       SCRIPT BASICO PARA CHECK DE BACKUP    #
###############################################


dir=/home
qtd=`ls /home/ | wc -l`
list_dir_sec=`ls /mnt/backup/`
sda_space=`df -h /home|sed -n '2p' |awk '{print $4 " " $8}'`
sdb_space=`df -h /secondary |sed -n '2p' |awk '{print $4 " " $8}'`

echo""

echo "A quantidade de diretoriois em $dir = $qtd ."
echo "Espaço em disco livre partição /home = $sda_space. "
echo "Espaço em disco livre partição /mnt= $sdb_space. "
echo "Pastas de backup atuais
$list_dir_sec"

echo""

echo "Tamanho de cada diretorio dentro de /mnt."
echo ""

echo "TAMAHO---DIRETORIO"
for i in $( ls /mnt/backup/ );
do

        du -sh /mnt/backup/$i
done

echo ""

echo "Quantidade de arquivos por diretorio."

for i in $( ls /mnt/backup/ );
do
        qtd_files=`ls /mnt/backup//$i | wc -l`
        echo "Diretorio $i Nº arquivos $qtd_files"
done
