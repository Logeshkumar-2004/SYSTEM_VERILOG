/*
7. Challenge 1
Create:
class employee;

    int id;

endclass
Create:
class manager extends employee;

    int team_size;

endclass
Assign values and print both.

8. Challenge 2
Create:
class transaction;

    int addr;

    function void display();

        $display("Addr=%0d", addr);

    endfunction

endclass
Create:
class packet extends transaction;

    int data;

endclass
Use inherited method.
*/
///class 1
module inherited_method_tb;
class employee;
int id;
    
endclass //employee

class team extends employee;
  int team_size;
    function new();
      $display("--------------- task-1 -------------");


    endfunction //new()
endclass team emp;

//class 2 


class addr;
int addr;
    function void display();
    $display("addr = %0d",addr);        
    endfunction //new()
endclass //className

class data extends addr;
int data ; 
    
endclass  data d1; 
initial begin
    emp = new();
    emp.id = 007;
    emp.team_size = 4;
  

    $display("employee id = %0d",emp.id);
    $display("employee team_size =%0d",emp.team_size);
    $display("--------------- task-2 -------------");
    d1 = new();
    d1.addr = 100;
    d1.data = 007;
    $display("data = %0d",d1.data);
    d1.display();

end 
endmodule
    