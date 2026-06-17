module data_type_tb ;
logic a ;
bit b ;
byte c ;
int d ;
integer e;

data_type dut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e)
);

initial begin
    $dumpfile("data_type.vcd");
    $dumpvars(0,data_type_tb);
    $monitor("time =%0t | logic a = %b | bit b = %b | byte c =%d | int d =%0d | integer e =%0d |",$time,a,b,c,d,e);
    b= 1'b1;
    c = 10 ;
    d = 1000;
    e = 10000;
    a=1'bz;
    #10;

    a = 1'bx;

end


    
endmodule