/*

7.Challenge 1

Create:

Class employee;

    Int id;
    Int salary;

Endclass

Create an object and print:

ID = 1001
Salary = 50000



8.Challenge 2

Create:

Class packet;

    Bit [7:0] addr;
    Bit [7:0] data;

Endclass

Create two objects:

Pkt1
Pkt2

Assign different values and print them.

*/
module employee_tb;
class employee;
    int id;
    int salary;
    
endclass //employee
employee emp1 ;
employee emp2 ;

class packet;
    bit [7:0]data_1;
    bit [7:0]data_2;   
    
endclass
packet pkt_1;
packet pkt_2;

initial begin
    $display("--------------- task-1 ---------------");
    emp1= new();
    emp2= new();
    emp1.id = 123;
    emp2.id = 321;
     
    emp1.salary = 222;
    emp2.salary = 111;


    $display("emp1 = %0d  | emp1 = %0d ",emp1.id,emp1.salary);
  $display("emp2 = %0d  | emp2 = %0d  ",emp2.id,emp2.salary);
    
    $display("--------------- task-2 -----------------");
    pkt_1 =new();
    pkt_2 =new();

    pkt_1.data_1=8'b01010101;
    pkt_1.data_2=8'b10101010;

    pkt_2.data_1=8'b01010101;
    pkt_2.data_2=8'b10101010;

    $display("pkt_1.data_1 =%b | pkt_1.data_2=%b",pkt_1.data_1,pkt_1.data_2);
    $display("pkt_2.data_1 =%b | pkt_2.data_2=%b",pkt_2.data_1,pkt_2.data_2);   
    
    
    
    
    
    
    
    $finish;    
end    
endmodule
