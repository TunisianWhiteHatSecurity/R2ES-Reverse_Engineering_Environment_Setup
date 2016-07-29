#!/bin/bash

vInstall_iInstallwine()
{
  echo -e "Adding wine to repository ..."
  sudo add-apt-repository ppa:ubuntu-wine/ppa &&\
  sudo apt-get update >/dev/null &&\
  echo -e "Wine was added to repository successfully."

  echo -e "Installing Xarchiver ..."
  sudo apt-get -y install wine1.9 >/dev/null &&\
  echo -e "Wine was  installed."
}

vInstall_iInstallXarchiver()
{
  echo -e "Installing Xarchiver ..."
  sudo apt-get -y install xarchiver >/dev/null &&\
  echo -e "Xarchiver was installed successfully."
}

vInstall_iInstallBuildessentiel()
{
  echo -e "Installing build essentiel ..."
  sudo apt-get -y install build-essential >/dev/null &&\
  echo -e "Build essentiel  was installed successfully."
}

vInstall_iInstallQmake()
{
  echo -e "Installing Qmake ..."
  sudo apt-get -y install qt5-qmake >/dev/null &&\
  echo -e "Qmake was installed successfully."
}

vInstall_iInstallMake()
{
  echo -e "Installing Make ..."
  sudo apt-get -y install make >/dev/null &&\
  echo -e "Make was installed successfully."
}

vInstall_iInstallPythonForWindows()
{
  mkdir -p /tmp/R2ES/ && \
  cd /tmp/R2ES/

  if which wine >/dev/null; then
    wget -q https://www.python.org/ftp/python/2.7.12/python-2.7.12.msi &&\
    wine msiexec /i python-2.7.12.msi /L*v log.txt
  else
    echo -e "You must send to me the fu*king senario te get into"
  fi

  cd ${WORKING_DIRECTORY}
}

vInstall_eInstallDependencies()
{
  #sudo apt-get update >/dev/null
  #sudo apt-get upgrade >/dev/null

  for ((ucCounter = 1; ucCounter <= ${#tabDependencies[@]} - 1; ucCounter++)); do
    echo
    case ${tabDependencies[ucCounter]} in
      WINE)
        vInstall_iInstallwine
        ;;
      Decompressor)
        vInstall_iInstallXarchiver
        ;;
      Compiler)
        vInstall_iInstallBuildessentiel
        ;;
      QMAKE)
        vInstall_iInstallQmake
        ;;
      MAKE)
        vInstall_iInstallMake
        ;;
      PYTHON27_WINDOWS)
        vInstall_iInstallPythonForWindows
        ;;
      *)
        echo -e "WTF!"
        ;;
    esac
  done
}

    #tabToInstall[${#tabDependencies[@]} ]="IDA"
    #tabToInstall[${#tabToInstall[@]} ]="GDB"
		#tabToInstall[${#tabToInstall[@]}]="NASM"
    #tabToInstall[${#tabToInstall[@]} ]="IMMUNITY_DBUGGER"
    #tabToInstall[${#tabToInstall[@]} ]="WIN_DBG"
    #tabToInstall[${#tabToInstall[@]} ]="PE_BROWSE"
    #tabToInstall[${#tabToInstall[@]} ]="EDB"
    #tabToInstall[${#tabToInstall[@]} ]="X64_DBG"
