module task_2_tb ;
logic d;
logic clk;
logic q;
logic r;

task_2 dut(
    .d(d),
    .clk(clk),
    .q(q),
    .reset(r)
);
    
    always #5 clk = ~clk;
    initial begin
        $dumpfile("task-2.vcd");
        $dumpvars(0,task_2_tb);
        $monitor("time=%0t | clk=%b | reset=%b | d=%b | q=%b",$time,clk,r,d,q);
        
        clk=0;
        d=0;
        r=1;

        #10;
        r=0;

        d=1;
        #10;
        d=0;
        #10 $finish;




    end
endmodule