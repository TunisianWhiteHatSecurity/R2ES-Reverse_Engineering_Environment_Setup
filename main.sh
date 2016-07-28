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

	if [ ${PYTHON27_WINDOWS_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] PYTHON27 is already installed."
	else
		echo -e "\t${Red}[-] PYTHON27 is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="PYTHON27"
	fi

	if [ ${IMMUNITY_DBUGGER_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] IMMUNITY_DBUGGER is already installed."
	else
		echo -e "\t${Red}[-] IMMUNITY_DBUGGER is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="IMMUNITY_DBUGGER"
	fi

	if [ ${WIN_DBG_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] WIN_DBG is already installed."
	else
		echo -e "\t${Red}[-] WIN_DBG is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="WIN_DBG"
	fi

	if [ ${PE_BROWSE_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] PE_BROWSE is already installed."
	else
		echo -e "\t${Red}[-] PE_BROWSE is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="PE_BROWSE"
	fi

	if [ ${EDB_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] EDB is already installed."
	else
		echo -e "\t${Red}[-] EDB is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="EDB"
	fi

	if [ ${X64_DBG_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] X64_DBG is already installed."
	else
		echo -e "\t${Red}[-] X64_DBG is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="X64_DBG"
	fi

	if [ ${IDA_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] IDA is already installed."
	else
		echo -e "\t${Red}[-] IDA is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="IDA"
	fi
}

main

for ((i = 1; i <= ${#tabToInstall[@]} - 1; i++)); do
  echo -e "\t\t${Cyan}Element $i to install : '${tabToInstall[i]}'"
done
