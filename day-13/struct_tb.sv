/*
Challenge 1

Create:

Typedef struct {
    Int emp_id;
    Int salary;
} employee_t;

Store:

Emp_id = 1001
Salary = 50000

Print both values.



Challenge 2

Create a packed struct:

Typedef struct packed {
    Bit [7:0] addr;
    Bit [7:0] data;
} packet_t;

Store:

Addr = 8’hAB
Data = 8’hCD

Print both fields.

*/
module structure_tb;
typedef struct {
    int id;
    string name;
    int salary;
} employee_t;

employee_t emp;

typedef struct packed {
    bit [5:0] zip_code ;
  bit [7:0] ss_num ;
    
}packet_t;
packet_t add;

initial begin
    $display("challenge 1");
    emp.id=015;
    emp.name="logeshkumar_s";
    emp.salary =100000;

    $display("employee id =%0d",emp.id);
    $display("employee name =%0s",emp.name);
    $display("employee salary =%0d",emp.salary);

    $display("challenge 2");
  add.zip_code= 6'd12;
  add.ss_num = 8'd123;
    $display("address zipcode =%0d",add.zip_code);
    $display("social_security number=%0d",add.ss_num);

end
    
endmodule