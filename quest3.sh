#!/bin/bash

x=""
arqv=""

while [ "$x" != "q"  ] ; do
	echo ""
	echo "r - Digite o nome de uma arquivo que será processado."
	echo "a - Remova todas as letras do arquivo."
	echo "b - Remova todos os digitos do arquivo."
	echo "c - Sustitua todos pos caracteres que não são letras nem dígitos do aquivo por $ "
	echo "q - Saia do script."
	echo ""
	read -p "Digite uma opção: " x
	
	if [ "$x" == "r" ] ; then
		read -p "Qual arquivo quer processar? " arqv
	elif [ "$x" == "a" ] ; then
	       sed -e 's/[a-z]//g' -e 's/[a-z]//g' < $arqv;
       	elif [ "$x" == "b" ] ; then
 		sed -e 's/[0-9]//g' < $arqvz;		
	elif [ "$x" == "c" ] ; then 
		sed -e 's/[^A-Za-z0-9]/$/g' < $arqv;
	fi
done
