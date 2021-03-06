#!/bin/bash

#Initialize Global Variables
WINE_IS_INSTALLED="NO"
PYTHON27_WINDOWS_INSTALLED="NO"
NASM_INSTALLED="NO"
GDB_INSTALLED="NO"
IMMUNITY_DBUGGER_INSTALLED="NO"
QMAKE_INSTALLED="NO"
MAKE_INSTALLED="NO"
DECOMPRESSOR_INSTALLED="NO"
COMPILER_INSTALLED="NO"
WIN_DBG_INSTALLED="NO"
PE_BROWSE_INSTALLED="NO"
EDB_INSTALLED="NO"
X64_DBG_INSTALLED="NO"
IDA_INSTALLED="NO"

#Check if wine is installed
vCheck_eIsWineInstalled()
{
  if which wine >/dev/null; then
    WINE_IS_INSTALLED="YES"
  else
    WINE_IS_INSTALLED="NO"
  fi
}

#Check if Python2.7 is installed in Windows
vCheck_eIsPython27WindowsInstalled()
{
echo "1";
}

#Check if nasm is installed
vCheck_eIsNasmInstalled()
{
  if which nasm >/dev/null; then
    NASM_INSTALLED="YES"
    #echo "[+] nasm is already Installed"
  else
    NASM_INSTALLED="NO"
  fi
}

#Check if gdb is installed
vCheck_eIsGdbInstalled()
{
  if which gdb >/dev/null; then
    GDB_INSTALLED="YES"
  else
    GDB_INSTALLED="NO"
  fi
}

#Check if ImmunityDebugger is installed
vCheck_eIsImmunityDebuggerInstalled()
{
  if [ ! -f "~/.wine/drive_c/Program Files (x86)/Immunity Inc/Immunity Debugger/ImmunityDebugger.exe" ]; then
      IMMUNITY_DBUGGER_INSTALLED="NO"
  else
    IMMUNITY_DBUGGER_INSTALLED="YES"
  fi
}

#Check if qmake is installed
vCheck_eIsQmakeInstalled()
{
  if which qmake >/dev/null; then
    QMAKE_INSTALLED="YES"
  else
    QMAKE_INSTALLED="NO"
  fi
}

#Check if make is installed
vCheck_eIsMakeInstalled()
{
  if which qmake >/dev/null; then
    MAKE_INSTALLED="YES"
  else
    MAKE_INSTALLED="NO"
  fi
}

#Check if make is installed
vCheck_eIsDecompressorInstalled()
{
  if which tar >/dev/null; then
    DECOMPRESSOR_INSTALLED="YES"
  else
    DECOMPRESSOR_INSTALLED="NO"
  fi
}

#Check if gcc is installed
vCheck_eIsCompilerInstalled()
{
  if which gcc >/dev/null; then
    COMPILER_INSTALLED="YES"
  else
    COMPILER_INSTALLED="NO"
  fi
}

#Check if WIN_DBG is installed
vCheck_eIsWinDbgInstalled()
{
  echo 1;
}

#Check if PEBrowse is installed
vCheck_eIsPeBrowseInstalled()
{
  #  PE_BROWSE_INSTALLED
  echo 1;
}

#Check if EDB is installed
vCheck_eIsEdbInstalled()
{
  #  EDB_INSTALLED
  echo 1;
}

#Check if X64_DBG is installed
vCheck_eIsX64DbgInstalled()
{
  #  X64_DBG_INSTALLED
  echo 1;
}

#Check if IDA is installed
vCheck_eIsIdaInstalled()
{
  #  IDA_INSTALLED
  echo 1;
}

#Check if Ollydbg is installed
vCheck_eIsOllyDbgInstalled()
{
echo "1";
}
