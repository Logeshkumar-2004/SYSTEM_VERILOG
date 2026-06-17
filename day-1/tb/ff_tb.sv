module ff_tb;
logic d ;
logic clk ;
logic r ;
logic q ;

ff dut(
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
    #10 d = 0 ;
    #10 d = 1 ;
    #10 d = 0 ;
    #10 $finish;

end

initial begin
    $dumpfile("ff.vcd");
    $dumpvars(0,ff_tb);

end

initial begin
    $monitor("time=%0t | reset=%b |clk=%b| d=%b | q=%b |",$time,r,clk,d,q);
end
    
endmodule

