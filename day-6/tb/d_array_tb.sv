/*

Q1
How do you declare a dynamic array?
int arr[];

Q2
How do you allocate memory?
arr = new[5];

Q3
How do you get the size?
arr.size()

Q4
How do you delete a dynamic array?
arr.delete();

Q5
How do you resize while preserving data?
arr = new[10](arr);

Day 6 Practice
Task 1
Create:
int arr[];
Allocate:
5 elements
Store:
5
10
15
20
25
Print using foreach.

Task 2
Print:
arr.size()

Task 3
Resize:
5 → 8 elements
using:
new[8](arr)
Print all values.


*/

module d_array_tb ;
int arr[];
integer i;



initial begin

     arr = new[5];
     //#10;
    
   foreach(arr[i])
    begin
        arr[i] = ((i+1)*5);
        #10;
    end
    foreach(arr[i])
    begin
        $display("arr[%0d]=%0d",i,arr[i]);
       
    end
     $display("arr size =%0d",arr.size());
#10;
    arr = new[8](arr);
    foreach(arr[i])
    begin
        arr[i] = ((i+1)*5);
        #10;
    end
    foreach(arr[i])
    begin
        $display("arr[%0d]=%0d",i,arr[i]);
        
    end
     $display("arr size =%0d",arr.size());
     #10;
     arr.delete();
     $display("arr size =%0d",arr.size());
    $finish;

end
    
   
endmodule