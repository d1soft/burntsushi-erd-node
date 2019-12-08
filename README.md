# BurntSushiErdNode
It is [BurntSushi/erd](https://github.com/BurntSushi/erd) Node.js wrapper

## Info

**Only UNIX supported!**

After package install executed [instal.sh](https://github.com/d1soft/burntsushi-erd-node/tree/master/scripts/instal.sh). Sudo required.  
This script will install system dependecies graphviz, stack and build BurntSushi/erd.  
First build be long (10-15 minutes).  
Also script copy executable to /usr/bin.

## Guide

**Install**:
```shell
npm install -S -e burntsushierdnode 

yarn add -E burntsushierdnode
```

**Options**  

| Name | Description | Default |  
| ---- | ---- | ---- |  
| `input` | Path to .er file | |  
| `output` | Path to output file | |  
| `bin` | Path to binary file | `../bin/erd` or `../bin/erd.exe` |  

**Usage**

*Also you can find example [here](https://github.com/d1soft/burntsushi-erd-node/tree/master/example)*

```js
const { generate } = require('../src/index');

generate({
    input: './erd.er',
    output: './erd.svg'
});
```

## TODO 

- [x] Typings  
- [ ] Install and build binaries platform dependent  
    - [ ] Windows  
    - [ ] UNIX  
    - [ ] OSx  
- [ ] Replace binary to node_modules/.bin  