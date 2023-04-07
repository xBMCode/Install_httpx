#!/usr/bin/bash
echo "[*]Install golang >>> go"
echo "[*]Install tool >>> httpx"
echo "[*]By : @Gaza.PY"
echo "[*]Date : 2023:04:7"
echo ""

#install lang > "go"
rm -rf go1.20.2.linux-amd64.tar.gz
wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && tar -xvf go1.20.2.linux-amd64.tar.gz
sudo chown -R root:root ./go
sudo mv -v go /usr/local/
echo "export PATH=$PATH:/usr/local/go/bin" >> $HOME/.profile
source $HOME/.profile
echo "[+]install go lang : OK"
go -h
#install tool > "httpx"
source $HOME/.profile
sudo rm -rf /usr/bin/httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
cd $HOME/go/bin
chmod +x $HOME/go/bin/httpx
sudo mv httpx /usr/bin/
echo "[+]OK install tool httpx"
httpx -h
