module task_tb ;
    logic a;
    logic b;
    logic sel;
    logic y;

    task_rtl dut(

        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("task-1.vcd");
        $dumpvars(0,task_tb);
         $monitor("a=%b | b=%b |sel=%b | y=%b",a,b,sel,y);

        a=1;b=0;sel=0;
        #10;
         a=1;b=0;sel=1;
         #10;
        
         
         $finish;

    end

    
endmodule