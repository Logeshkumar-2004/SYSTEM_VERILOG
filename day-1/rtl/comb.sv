/*
Task 1
Create a 2-input AND gate using:
assign
*/

module comb (
    input logic a,
    input logic b,
    output logic y 
);
    always_comb begin 
        y = a & b ;
    end
endmodule