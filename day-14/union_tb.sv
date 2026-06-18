/*
Challenge 1

Create:

Typedef union {
    Int x;
    Int y;
} data_t;

Assign:

X = 500

Print:

X
Y

Observe the result.



Challenge 2

Create:

Typedef union packed {
    Bit [15:0] word;
    Bit [1:0][7:0] bytes;
} packet_t;

Assign:

16’h1234

Print:

Word
Bytes[1]
Bytes[0]

*/
module union_tb;
typedef union{
    int x;
    int y;

}data_t;
  data_t data;

typedef union packed{
    bit [15:0]words;
    bit [1:0][7:0]bytes;

}packet_t;
  packet_t packet;

initial begin
    $display("------ challenge 1 ------");
    
    data.x=500;
    $display("data.x=%0d",data.x);
    $display("data.y=%0d",data.y);

    $display("-------- challenge 2 ------");
    
    packet.words=16'h1234;
  $display("packet.word = %0h",packet.words);
    $display("packet.bytes[0] = %0h",packet.bytes[0]);
    $display("packet.bytes[1] = %0h",packet.bytes[1]);
    $finish;
end
    
endmodule