#!/bin/bash

#includes
source Colors.sh
source Check_installation.sh
source Install_tools.sh

#Global Variables
tabToInstall=()
tabToInstall[0]="NoThing"

main()
{

	#PYTHON27_WINDOWS_INSTALLED="NO"
	#IMMUNITY_DBUGGER_INSTALLED="NO"
	#WIN_DBG_INSTALLED="NO"
	#PE_BROWSE_INSTALLED="NO"
	#EDB_INSTALLED="NO"
	#X64_DBG_INSTALLED="NO"
	#IDA_INSTALLED="NO"


	if [ ${GDB_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] GDB is already installed."
	else
		echo -e "\t${Red}[-] GDB is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="GDB"
	fi

	if [ ${NASM_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] NASM is already installed."
	else
		echo -e "\t${Red}[-] NASM is not installed installed."
		tabToInstall[${#tabToInstall[@]}]="NASM"
	fi

	if [ ${COMPILER_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] Compiler is already installed."
	else
		echo -e "\t${Red}[-] Compiler is not installed installed."
		tabToInstall[${#tabToInstall[@]}]="Compiler"
	fi

	if [ ${QMAKE_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] QMAKE is already installed."
	else
		echo -e "\t${Red}[-] QMAKE is not installed installed."
		tabToInstall[${#tabToInstall[@]}]="QMAKE"
	fi

	if [ ${MAKE_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] MAKE is already installed."
	else
		echo -e "\t${Red}[-] MAKE is not installed installed."
		tabToInstall[${#tabToInstall[@]}]="MAKE"
	fi

	if [ ${DECOMPRESSOR_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] Decompressor is already installed."
	else
		echo -e "\t${Red}[-] Decompressor is not installed installed."
		tabToInstall[${#tabToInstall[@]}]="Decompressor"
	fi

	if [ ${WINE_IS_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] WINE is already installed."
	else
		echo -e "\t${Red}[-] WINE is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="WINE"
	fi

}

main

for ((i = 1; i <= ${#tabToInstall[@]} - 1; i++)); do
  echo -e "\t\t${Cyan}Element $i to install : '${tabToInstall[i]}'"
done
