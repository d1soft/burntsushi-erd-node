const { generate } = require('../src/index');

generate({
    input: './nfldb.er',
    output: './erd.svg'
});