// 2:1 mux

module mux (
    input logic a,
    input logic b,
    input logic sel,
    output logic y 
  );
    always_comb begin 
        y = sel ? a : b ;
    end
endmodule