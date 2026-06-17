/*
Challenge 1 — 2:1 MUX

Using always_comb, write a 2:1 MUX.

Inputs

Logic a;
Logic b;
Logic sel;

Output

Logic y;

Truth Table

Sel	y

0	a
1	b
*/
module task_rtl(
    input logic a ,
    input logic b ,
    input logic sel,
    output logic y 
);

always_comb begin 

y = sel?b:a;
    
end

    
endmodule