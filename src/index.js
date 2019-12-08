const { spawn } = require('child_process');
const { resolve } = require('path');

/**
 * Generates ERD from data
 * 
 * @param {object} options
 * @param {string} options.input Path to .er file
 * @param {string} options.output Path to ouptut: .jpg, .png, .svg etc 
 * @param {string} [options.bin] Path to bin file erd / erd.exe
 */
function generate(options) {
    const executable = resolve(__dirname, options.bin || '../bin/erd');
    const input = resolve(__dirname, options.input);
    const output = resolve(__dirname, options.output);

    const child = spawn(executable, [
        '-i', input,
        '-o', output
    ]);
}

module.exports = {
    generate
}