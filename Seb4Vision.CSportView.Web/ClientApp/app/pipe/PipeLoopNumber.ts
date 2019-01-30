import { PipeTransform, Pipe } from "../../../node_modules/@angular/core";

@Pipe({name: "pipeLoopNumber"})
export class PipeLoopNumber implements PipeTransform{
    transform(value: any, args: string[]) :any {
        let res  = []
        for(let i = 0; i < value; i++)
        {
            res.push(i);
        }
        return res;
    }
    
}