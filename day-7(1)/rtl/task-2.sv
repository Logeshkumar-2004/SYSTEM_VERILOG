/*
Challenge 2 — D Flip-Flop

Using:

Always_ff @(posedge clk)

Create a D Flip-Flop.

Inputs

Logic clk;
Logic d;

Output

Logic q;

*/
module task_2 (
    input logic clk,
    input logic d,
    input logic reset,
    output logic q
    );
    always_ff @( posedge clk or posedge reset ) begin 
        if (!reset) begin
            q <= d ;
        end else begin
            q <= 0;
            
        end
        
    end


endmodule