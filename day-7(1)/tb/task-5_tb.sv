/*
Challenge 5 — foreach Loop

Create:

Int arr[5];

Initialize:

10
20
30
40
50

Print using:

Foreach(arr[i])








*/
module task_tb ;
    
int arr[];
integer i;
initial begin
    arr = new[10];
    $display("task-5");
    foreach(arr[i])
    begin
        arr[i] = ((i+1)*10);
        $display("arr[%0d]=%0d",i,arr[i]);

    end


end

initial begin

    /*
    Challenge 6 — Dynamic Array

Create:

Int arr[];

Allocate:

Arr = new[5];

Store:

1
2
3
4
5

Print:

Elements

Size


Expected:

Size = 5
    */
    $display("task-6");

    arr=new[5];
     $display("arr_size=%0d",arr.size());
    foreach(arr[i])
    begin
        arr[i]=i+1;
         $display("arr[%0d]=%0d",i,arr[i]);
        
        
    end
   
    
end
/*
Challenge 7 — Dynamic Array Resize

Start:

Arr = new[3];

Store:

10
20
30

Resize:

Arr = new[5](arr);

Print all elements.

Expected:

10
20
30
0
0
*/
initial begin
    $display("task-7");
arr= new[7](arr);

 $display("arr_size=%0d",arr.size());
 foreach(arr[i])
 begin
    $display("arr[%0d]=%0d",i,arr[i]);

    
 end

    
end


endmodule
