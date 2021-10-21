#!/bin/bash
> assessment.txt
date +%d-%m-%y >> assessment.txt
echo
echo
echo "Informacoes da Distro utilizada $(hostname -i):" >> assessment.txt
cat /etc/*-release >> assessment.txt
echo "================================" >> assessment.txt
echo "================================" >> assessment.txt
echo "Informacoes do Kernel do Servidor $(hostname -i):" >> assessment.txt
uname -a >> assessment.txt
echo "================================" >> assessment.txt
echo "================================" >> assessment.txt
echo "Lista de Usuarios Presente no Servidor $(hostname -i):" >> assessment.txt
cat /etc/passwd | cut -d: -f1 >> assessment.txt 
echo "================================" >> assessment.txt
echo "================================" >> assessment.txt 
echo "Pacotes instalados no Servidor $(hostname -i):" >> assessment.txt
dpkg -l >> assessment.txt
echo "================================" >> assessment.txt
echo "================================" >> assessment.txt
