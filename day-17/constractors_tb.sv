/*
7.Challenge 1

Create:

Class employee;

    Int id;

    Function new();

        Id = 1001;

    Endfunction

Endclass

Create object and print:

ID = 1001



8.Challenge 2

Create:

Class packet;

    Int addr;
    Int data;

    Function new(int a, int d);

        Addr = a;
        Data = d;

    Endfunction

Endclass

Create object:

Pkt = new(100,200);

Print values.

*/
module constractor;

class con_tb;
int employee_id;
int employee_salary;

  function new(int id,int salary);
    employee_id = id ;
    employee_salary = salary ;

    endfunction //new()

endclass 
con_tb con;
  
  
class packet;
int A;
int B;
 

  function new(int a, int b);
    A = a ;
    B = b  ;

    endfunction //new()
endclass 
packet pkt;

initial begin
    $display("---------- task-1 ----------");
  con = new(100 , 200);
    $display("employee ID=%0d ",con.employee_id);
    $display("employee salary=%0d",con.employee_salary);
    $display("------------ task-2 ----------");
    pkt = new(122 , 113);
  $display("A = %0d",pkt.A);
  $display("B = %0d",pkt.B);
    $finish;


end
    
endmodule