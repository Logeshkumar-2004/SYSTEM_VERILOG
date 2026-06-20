/*
7.Challenge 1


Create:

Class packet;

    Int data;

Endclass

Create:

P1
P2

Assign:

P2 = p1;

Modify:

P2.data

Observe the output.

*/
module object_tb;
    class packet;
        int data;
    endclass //
    packet p1;
    packet p2;
initial begin
    p1 = new();
    p1.data = 90;
    p2 = p1;
    p2.data = 100;

    $display("p1.data = %0d",p1.data);
    $display("p2.data = %0d",p2.data);

end

    
endmodule
