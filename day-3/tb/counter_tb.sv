module counter_tb ;
    int counter;

    counter dut(.counter(counter));

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0,counter_tb);
        
        counter = 0;
        #10;
        repeat(5)
        begin
            counter++;
            $display("time=%0t | counter=%0d",$time,counter);
        end
        
    end
endmodule