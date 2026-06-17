/*
Challenge 3 — Packed Array

Create:

Logic [7:0] data;

Store:

8’b10101010

Print:

Full value

Bit 0

Bit 7


Expected:

10101010
0
1
*/
module task_3_tb;
logic [7:0] data;

initial begin
    data = 8'b11111110;
    $display(" data=%b |data=%0d | data[0]=%b | data[7]=%b |",data,data,data[0],data[7]);
    #10;

        data = 8'b01111111;
    $display("data=%b |data=%0d | data[0]=%b | data[7]=%b |",data,data,data[0],data[7]);
    #10;


    data = 8'b01111110;
    $display("data=%b |data=%0d | data[0]=%b | data[7]=%b |",data,data,data[0],data[7]);
    #10;

end
    
endmodule