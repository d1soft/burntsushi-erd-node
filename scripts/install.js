const { platform } = require('os');
const { spawn } = require('child_process');

let proc;
switch (platform()) {
    case 'linux':
        proc = spawn('sh', [
            './scripts/install.sh'
        ]);
    break;

    case 'win32': 
        proc = spawn('powershell', [
            './scripts/install-windows.ps1'
        ]);
    break;
}

proc.stdout.setEncoding('utf-8');
proc.stderr.setEncoding('utf-8');
proc.stdin.setDefaultEncoding('utf-8')

proc.stdout.on('data', (d) => console.log(d.toString()));
proc.stderr.on('data', (d) => console.log(d.toString()));
process.stdin.pipe(proc.stdin);