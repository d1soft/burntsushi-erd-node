const { generate } = require('../src/index');

generate({
    input: '../example/erd.er',
    output: '../example/erd.svg'
});