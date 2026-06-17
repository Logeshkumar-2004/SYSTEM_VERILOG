/*
Day 9 Practice

Task 1

Create:

Int q[$];

Store:

5
10
15
20

Print all elements.



Task 2

Print:

q.size()



Task 3

Create:

Int q[$] = ‘{100,200,300};

Print:

Q[0]
Q[1]
Q[2]
*/

module queue ;
    int arr_1[$];
    int arr_2[$];
    integer i;
    
initial begin
    arr_1='{100,200,300,400,500,700,800,900,1000};

    
    foreach(arr_1[i])
    begin
        $display("arr_1[%0d]=%0d",i,arr_1[i]);
    end
    
    $display("arr_1 size=%0d",arr_1.size);

    arr_2='{10,20,30,40,50};
    foreach(arr_2[i])
    begin
        $display("arr_2[%0d]=%0d",i,arr_2[i]);
    end
     $display("arr_2 size=%0d",arr_2.size);
end
    
endmodule