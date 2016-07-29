#!/bin/bash

#Global Variables
WORKING_DIRECTORY=${PWD}

tabToInstall=()
tabDependencies=()

tabToInstall[0]="NoThing"
tabDependencies[0]="NoThing"

#includes
source Colors.sh
source Check_installation.sh
source Install_tools.sh

main()
{
	vCheck_eIsGdbInstalled
	vCheck_eIsWineInstalled
	vCheck_eIsImmunityDebuggerInstalled
	vCheck_eIsQmakeInstalled
	vCheck_eIsMakeInstalled
	vCheck_eIsDecompressorInstalled
	vCheck_eIsPython27WindowsInstalled
	vCheck_eIsCompilerInstalled
	vCheck_eIsWinDbgInstalled
	vCheck_eIsPeBrowseInstalled
	vCheck_eIsEdbInstalled
	vCheck_eIsX64DbgInstalled
	vCheck_eIsIdaInstalled

	if [ ${WINE_IS_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] WINE is already installed."
	else
		echo -e "\t${BRed}[-] WINE is not installed installed."
		tabDependencies[${#tabDependencies[@]} ]="WINE"
	fi

	if [ ${GDB_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] GDB is already installed."
	else
		echo -e "\t${BRed}[-] GDB is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="GDB"
	fi

	if [ ${NASM_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] NASM is already installed."
	else
		echo -e "\t${BRed}[-] NASM is not installed installed."
		tabToInstall[${#tabToInstall[@]}]="NASM"
	fi

	if [ ${COMPILER_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] Compiler is already installed."
	else
		echo -e "\t${BRed}[-] Compiler is not installed installed."
		tabDependencies[${#tabDependencies[@]}]="Compiler"
	fi

	if [ ${QMAKE_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] QMAKE is already installed."
	else
		echo -e "\t${BRed}[-] QMAKE is not installed installed."
		tabDependencies[${#tabDependencies[@]}]="QMAKE"
	fi

	if [ ${MAKE_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] MAKE is already installed."
	else
		echo -e "\t${BRed}[-] MAKE is not installed installed."
		tabDependencies[${#tabDependencies[@]}]="MAKE"
	fi

	if [ ${DECOMPRESSOR_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] Decompressor is already installed."
	else
		echo -e "\t${BRed}[-] Decompressor is not installed installed."
		tabDependencies[${#tabDependencies[@]}]="Decompressor"
	fi

	if [ ${PYTHON27_WINDOWS_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] PYTHON27 for windows is already installed."
	else
		echo -e "\t${BRed}[-] PYTHON27 for windows is not installed installed."
		tabDependencies[${#tabDependencies[@]} ]="PYTHON27_WINDOWS"
	fi

	if [ ${IMMUNITY_DBUGGER_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] IMMUNITY_DBUGGER is already installed."
	else
		echo -e "\t${BRed}[-] IMMUNITY_DBUGGER is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="IMMUNITY_DBUGGER"
	fi

	if [ ${WIN_DBG_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] WIN_DBG is already installed."
	else
		echo -e "\t${BRed}[-] WIN_DBG is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="WIN_DBG"
	fi

	if [ ${PE_BROWSE_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] PE_BROWSE is already installed."
	else
		echo -e "\t${BRed}[-] PE_BROWSE is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="PE_BROWSE"
	fi

	if [ ${EDB_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] EDB is already installed."
	else
		echo -e "\t${BRed}[-] EDB is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="EDB"
	fi

	if [ ${X64_DBG_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] X64_DBG is already installed."
	else
		echo -e "\t${BRed}[-] X64_DBG is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="X64_DBG"
	fi

	if [ ${IDA_INSTALLED} == "YES" ]; then
		echo -e "\t${BGreen}[+] IDA is already installed."
	else
		echo -e "\t${BRed}[-] IDA is not installed installed."
		tabToInstall[${#tabToInstall[@]} ]="IDA"
	fi

	#vInstall_eInstallDependencies
}

main

for ((i = 1; i <= ${#tabToInstall[@]} - 1; i++)); do
  echo -e "\t${BCyan}Element $i to install : '${tabToInstall[i]}'"
done
