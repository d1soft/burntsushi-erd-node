# BurntSushiErdNode
It is [BurntSushi/erd](https://github.com/BurntSushi/erd) Node.js wrapper

## Info

**Only UNIX supported!**

After package install executed [instal.sh](./scripts/instal.sh). Sudo required.  
This script will install system dependecies graphviz, stack and build BurntSushi/erd.  
First build be long (10-15 minutes).  
Also script copy executable to /usr/bin.

## Guide

**Install**:
```shell
npm install -S -e burntsushi-erd-node  

yarn add -E burntsushi-erd-node
```

**Usage**
```js
const { generate } = require('../src/index');

generate({
    input: './erd.er',
    output: './erd.svg'
});
```