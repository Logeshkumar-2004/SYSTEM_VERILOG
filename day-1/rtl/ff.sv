module ff (
    input logic d, 
    input logic clk,
    input logic reset ,
    output logic q
);
    always_ff @( posedge clk or posedge reset ) begin 
        if (!reset) begin
            q <= d; 
        end else begin
            q <= 0;
        end
        
    end
endmodule