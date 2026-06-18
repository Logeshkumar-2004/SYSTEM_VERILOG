/*
Day 11 Practice

Task 1

Create:

Int marks[string];

Store:

Ram = 90
Kumar = 80
John = 95

Print Kumar’s marks.



Task 2

Check:

Marks.exists(“Ram”)

Display:

Found

If present.



Task 3

Print total number of students using:

Marks.num()



Task 4

Delete:

Marks[“John”]

Print remaining elements.

*/
module a_atb;
int mark[string];
integer i;
string name;
initial begin
mark["ram"]=90;
mark["kumar"]=80;
mark["john"]=95;

if (mark.first(name)) begin
    do begin
        $display("%s = %0d",name,mark[name]);
    end
    while(mark.next(name));
end

$display("task-1");

$display("mark[kumar]=%0d",mark["kumar"]);

$display("task-2");
if (mark.exists("ram")) begin
$display(" ram found");    
end
else begin
    $display("ram not found");
end
$display("task-3");
$display("mark.num=%0d",mark.num());
$display("task-4");
  mark.delete("john");
$display("mark.delete(john)");
if (mark.exists("john")) begin
    $display("john found");
    
end else begin
    $display("john not found");
end
    
    
end

endmodule