module array_tb;
logic [7:0]p;
logic [7:0]up[3];
integer i;

array_v but(
    .p(p),
    .up(up)
);

initial begin
    $dumpfile("array.vcd");
    $dumpvars(0,array_tb);


    p = 8'haa;
    $display("packed_array = %h",p);

    up[0] = 8'hbb;
    up[1] = 8'hcc;
    up[2] = 8'hdd;

    foreach(up[i])
    begin

        $display("unpacked_array[%0d]=%0h",i,up[i]);
    end

   // for (i = 0;i<2 ;i++ ) begin
   //$display("unpacked_array[0]=%0h",up[0]);
   //$display("unpacked_array[1]=%0h",up[1]);
     //   $display("unpacked_array[2]=%0h",up[2]);
    //end

    //$display("unpacked_array");
    #10 $finish;

end
    
endmodule