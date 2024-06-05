#!/bin/bash
#
#===============================================================================
#
# File...........: limpar.sh
# Title..........: Limpar
# Program........: Shell Code -  GNU/Linux
#
# Description....: Limpa arquivos temporarios como Cache e Swap 
#
# Copyright......: Copyright(c) 2024 / @Diego.Casagranda - HackLab
# License........: GNU GENERAL PUBLIC LICENSE - Version 3, 29 June 2007
#
# Author.........: Diego Casagranda
# E-Mail.........: diego.casagranda@mail.ru
#
# Dependency.....: None
#
# Date...........: 05/06/2024
# Update.........: None
#
# Version........: 0.1.0
#
#===============================================================================
#
# ###########
# # History #
# ###########
#
#     05/06/2024 : Criação do codigo
#
#===============================================================================

# Verifica se é o root 
[ "$UID" -eq 0 ] || { echo "Execcute como root."; exit 1;}

# Limpa arquivos de Cache do sistema
sudo sync; echo 1 > /proc/sys/vm/drop_caches
sudo sync; echo 2 > /proc/sys/vm/drop_caches
sudo sync; echo 3 > /proc/sys/vm/drop_caches

# Limpa arquivo Swap
sudo swapoff -a && swapon -a

# Limpa a lixeira do usuario mais arquivos temporarios .deb
sudo rm -rf ~/.local/share/Trash/*
sudo rm -rvf /var/cache/apt/archives/*.deb


