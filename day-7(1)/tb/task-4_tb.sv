/*
Challenge 4 — Unpacked Array

Create:

Logic mem[4];

Store:

1
0
1
1

Print all elements.
*/
module task_4_tb;
logic mem[4];
integer i;

initial begin
    mem[0]=1;
    mem[1]=0;
    mem[2]=1;
    mem[3]=1;
    #10;
    foreach(mem[i])
    begin
        $display("mem[%0d]=%b",i,mem[i]);


    end
    $finish;




end
    
endmodule