#!/bin/bash

echo "Install wget and unzip."
echo "$ apt-get install -y wget unzip"
echo
echo "apt-get exit code: ${?}"
echo

# get the tool of wget and unzip
apt-get install -y wget unzip

# download sratoolkit
# For format convertion?
# echo "Downloading sratoolkit from ncbi..."
# wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.5.7/sratoolkit.2.5.7-ubuntu64.tar.gz
# tar xvzf sratoolkit.2.5.7-ubuntu64.tar.gz
# chmod a+x sratoolkit.2.5.7-ubuntu64/bin/*

echo
echo "Begin debug messages from install.sh"
echo

# download aspera connect
echo "Download Aspera Connect tool."
echo "$ wget http://download.asperasoft.com/download/sw/connect/3.6.2/aspera-connect-3.6.2.117442-linux-64.tar.gz"

wget http://download.asperasoft.com/download/sw/connect/3.6.2/aspera-connect-3.6.2.117442-linux-64.tar.gz

echo
echo "wget exit code: ${?}"
echo

echo "Uncompress downloaded file."
echo "$ tar xvzf aspera-connect-3.6.2.117442-linux-64.tar.gz"

tar xvzf aspera-connect-3.6.2.117442-linux-64.tar.gz

echo "Install aspera."
echo "$ ./aspera-connect-3.6.2.117442-linux-64.sh"

./aspera-connect-3.6.2.117442-linux-64.sh

echo
echo "install exit code: ${?}"
echo

echo "Make contents of bin executable."
echo "$ chmod a+x ~/.aspera/connect/bin/*"

chmod a+x ~/.aspera/connect/bin/*
# export PATH=$PATH:"$HOME/.aspera/connect/bin"
# echo "PATH=\$PATH:\$HOME/.aspera/connect/bin" >> ~/.bashrc

echo
echo "End debug messages from install.sh"
echo
