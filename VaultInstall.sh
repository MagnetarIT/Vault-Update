#!/bin/sh
echo "Current Vault Version: $(vault --version)"
echo ""
echo "Getting lastest download URL for Vault for OSX on x64"
DOWNLOAD_LINK=$(curl https://www.vaultproject.io/downloads.html | grep -o 'https://releases.hashicorp.com/vault[^"]*' | grep zip)
echo ""
echo "Downloading Vault from '$DOWNLOAD_LINK'"
curl $DOWNLOAD_LINK -o ~/Vault.zip
echo ""
echo "Extracting Vault file to /usr/local/bin     !!sudo required!!"
sudo unzip -o ~/Vault.zip -d "/usr/local/bin" 
echo ""
echo "Removing ~/Vault.zip"
rm ~/Vault.zip
echo ""
echo ""
echo ""
echo "New Vault Version: $(vault --version)"
