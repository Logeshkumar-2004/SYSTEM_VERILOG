/*
Problem 1

Print:

1
2
3
4
5

Using a for loop.



Problem 2

Print:

Welcome DV

5 times using repeat.



Problem 3

Generate numbers:

0
1
2
3
4

Using while.



Problem 4

Create clock using:

Forever #5 clk = ~clk;

Run simulation for:

#50;
$finish;

Observe waveform in GTKWave.



Problem 5

Create:

Int arr[5];

Store:

5
10
15
20
25

Print using:

Foreach(arr[i])



Problem 6

Create a Dynamic Array:

Int arr[];

Allocate:

Arr = new[5];

Store:

10
20
30
40
50

Print all values using foreach.
*/
module loop ;
int arr[];
int d_arr[];
reg clk;
integer i;



initial begin
    $dumpfile("loop.vcd");
    $dumpvars(0,loop);
    

  arr=new[5];


    $display("task-1");
    for (i =0 ;i<=4 ;i++ ) begin
        arr[i]=i+1;
        $display("arr[%0d]=%0d",i,arr[i]);
    end




    $display("task-2");
    repeat (5)

    $display("welcome DV");  


     $display("task-3");
     i=0;
    arr = new[5](arr);
    while (i<5) begin
    arr[i]=i+1;
    $display("arr[%0d]=%0d",i,arr[i]);
    i++;
    end

    


    
    
    

        $display("task-5");
        i=0;
        arr = new[7](arr);

        foreach(arr[i])
        begin
            arr[i]=(i+1)*5;
        $display("arr[%0d]=%0d",i,arr[i]);
        
        end
  
   
    

        $display("task-6");
        
        d_arr=new[10];
        

        foreach(arr[i])
        begin
            arr[i]=((i+1)*10);
        $display("arr[%0d]=%0d",i,arr[i]);

        end
end

     initial begin
        clk=0;
      
    $display("task-4");
    forever #5 clk = ~clk;
    begin
         $monitor("clk=%0b",clk);
    
    end
        end


        initial begin
            #50;
            arr.delete();
        

   
    
    $finish;

        end
        


endmodule