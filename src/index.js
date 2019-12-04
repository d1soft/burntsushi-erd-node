const { spawn } = require('child_process');
const { join } = require('path');

/**
 * Generates ERD from data
 * 
 * @param {object} options
 * @param {string} options.input Path to .er file
 * @param {string} options.output Path to ouptut: .jpg, .png, .svg etc 
 * @param {string} [options.executable] Path to erd executable
 */
function generate(options) {
    const executable = join(__dirname, options.executable || '../bin/erd');
    const input = join(__dirname, options.input);
    const output = join(__dirname, options.output);

    const child = spawn(executable, [
        '-i', input,
        '-o', output
    ]);
}

module.exports = {
    generate
}