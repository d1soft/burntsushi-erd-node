declare module 'burntsushi-erd-node' {
    
    type GenerateOptions = {
        input: string;
        output: string;
        bin?: string;
    }

    function generate(options: GenerateOptions): void;

    export {
        generate
    }
}