#!/usr/bin/sh
DIR=$PWD
echo "Install BurntSushi/erd and dependecies: "
sudo apt-get update
if [`command -v stack` ]; then
    echo "stack is installed yet"
else
    curl -sSL https://get.haskellstack.org/ | sh
fi

if [`command -v graphviz` ]; then
    echo "graphviz is installed yet"
else
    sudo apt-get install graphviz
fi

git clone git://github.com/BurntSushi/erd "$DIR/erd"
cd "$DIR/erd"

echo "Build BurntSushi/erd: "
stack install --local-bin-path "$DIR/bin"
cd "$DIR"

echo "Remove unused files: "
rm -rf "$DIR/erd"
exit 0;