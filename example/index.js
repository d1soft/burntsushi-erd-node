const { generate } = require('../src/index');

generate({
    bin: '/usr/bin/erd',
    input: '../example/erd.er',
    output: '../example/erd.svg'
});