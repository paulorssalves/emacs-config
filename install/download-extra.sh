#!/bin/sh

# DEPENDÊNCIAS: ispell

INSTALLDIR=./install/
UNTARRED_DIR=${INSTALLDIR}br.ispell-2.4/
LNDIR=/usr/lib/ispell/

LOCALDIR=$(pwd)

printf "baixando arquivos necessários...\n\n"

wget --verbose -P $INSTALLDIR https://www.ime.usp.br/~ueda/br.ispell/br.ispell-2.4.tar.gz

printf "\ndescompactando...\n\n"

TARFILE=br.ispell-2.4.tar.gz
tar xvf ${INSTALLDIR}$TARFILE -C ${INSTALLDIR} 

printf "\nColoque sua senha (sudo) para instalar o dicionário ispell em pt-br:\n"

cd $UNTARRED_DIR && sudo make br.hash && sudo make install 
cd $LNDIR 

printf "\ncriando links simbólicos...\n\n"
sudo ln -s br.hash brasileiro.hash

printf "removendo os resíduos...\n\n"

cd $LOCALDIR
sudo rm -v -r ${INSTALLDIR}$TARFILE $UNTARRED_DIR

