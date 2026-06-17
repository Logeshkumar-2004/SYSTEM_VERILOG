module d_ff_tb;
logic d ;
logic clk ;
logic r ;
logic q ;

d_ff dut(
    .d(d),
    .clk(clk),
    .reset(r),
    .q(q)
);
always #5 clk = ~clk ;
initial begin
    clk =0;
    r=1;
    d=0;
    #10;
    r=0;
        d = 1 ;
    #10 d = 0 ;
    #10 d = 1 ;
    #10 $finish;

end

initial begin
    $dumpfile("d_ff.vcd");
    $dumpvars(0,d_ff_tb);

end

initial begin
    $monitor("time=%0t | reset=%b |clk=%b| d=%b | q=%b |",$time,r,clk,d,q);
end
    
endmodule

