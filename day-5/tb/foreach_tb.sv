module for_each_tb;
logic [7:0]arr_1[5];
logic [7:0]arr_2[5];
logic [7:0]arr_3[5];

integer i;
    for_each dut(
        .arr_1(arr_1),
        .arr_2(arr_2),
        .arr_3(arr_3)

    );
    initial begin
        $dumpfile("foreach.vcd");
        $dumpvars(0,for_each_tb);
        //task-1

         foreach(arr_1[i])
    begin
        arr_1[i] =(( i + 1) * 10);
        
    end
    //task-2

    foreach(arr_2[i])
    begin
        arr_2[i] = i;
    end
    //task-3

    foreach(arr_3[i])
    begin
        arr_3[i] = (i+10);
        #10;
        arr_3[i] = ((arr_3[i]*(16**1))+(arr_3[i]*(16**0)));
        
    end
    

    foreach(arr_1[i])
    begin
        

        $display("arr[%0d] = %0d",i,arr_1[i]);

    end

     foreach(arr_2[i])
    begin
        

        $display("arr[%0d] = %0d",i,arr_2[i]);

    end
    //task-3

    for (i =0 ;i<5 ;i++ ) begin
        arr_3[i] = (i+10);
        #10;
        arr_3[i] = ((arr_3[i]*(16**1))+(arr_3[i]*(16**0)));
        $display("arr[%0d] = %0h",i,arr_3[i]);
        
    end

     foreach(arr_3[i])
    begin
        

        $display("arr[%0d] = %0h",i,arr_3[i]);

    end


        


    end

   
endmodule