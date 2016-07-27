#!/bin/bash

#includes
source Colors.sh
source Check_installation.sh
source Install_tools.sh

#Global Variables
tabToInstall=()
tabToInstall[0]="NoThing"
echo -e ${#tabToInstall[@]}

main()
{

	WINE_IS_INSTALLED="NO"
	PYTHON27_WINDOWS_INSTALLEd="NO"
	NASM_INSTALLED="NO"
	GDB_INSTALLED="NO"
	IMMUNITY_DBUGGER_INSTALLED="NO"
	QMAKE_INSTALLED="NO"
	MAKE_INSTALLED="NO"
	DECOMPRESSER_INSTALLED="NO"
	COMPILER_INSTALLED="NO"
	WIN_DBG_INSTALLED="NO"
	PE_BROWSE_INSTALLED="NO"
	EDB_INSTALLED="NO"
	X64_DBG_INSTALLED="NO"
	IDA_INSTALLED="NO"

	if [ ${WINE_IS_INSTALLED} == "YES" ]; then
		echo -e "\t${Green}[+] WINE is already installed."
	else
		echo -e "\t${Red}[-] GDB is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="GDB"
	fi


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

}


main
echo -e ${#tabToInstall[@]}
