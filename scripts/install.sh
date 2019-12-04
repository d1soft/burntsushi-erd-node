if [ `command -v erd` ]; then
    echo "BurntSushi/erd is installed yet"
    exit 1;
fi    

echo "Install BurntSushi/erd and dependecies: "
sudo apt-get update
sudo apt-get install graphviz
git clone git://github.com/BurntSushi/erd
cd erd
curl -sSL https://get.haskellstack.org/ | sh
echo "Build BurntSushi/erd: "
stack install --local-bin-path ../bin
cd ..
echo "Remove unused files: "
rm -rf ./erd
echo "Copy executable to /usr/bin: "
cp ./bin/erd /usr/bin/erd