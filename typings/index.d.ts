declare module 'burntsushi-erd-node' {
    
    type GenerateOptions = {
        input: string;
        output: string;
        bin: '../bin/erd';
    }

    function generate(options: GenerateOptions): void;

    export {
        generate
    }
}