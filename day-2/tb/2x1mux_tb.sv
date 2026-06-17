module mux_tb;
logic a;
logic b;
logic sel;
logic y;

mux dut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);
    initial begin
        a = 0; b = 1; sel = 1 ;
        #10;

        a = 0; b = 1; sel = 0 ;
        #10;

        a = 0; b = 1; sel = 1 ;
        #10;

        a = 0; b = 1; sel = 0 ;
        #10 $finish;

    end

    initial begin
        $dumpfile("2x1mux.vcd");
        $dumpvars(0,mux_tb);

        $monitor("time=%0t | a=%b | b=%b | sel=%b | y=%b",$time,a,b,sel,y);
    end
endmodule