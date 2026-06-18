/*
Challenge 1

Create:

Int arr[] = ‘{5,10,15,20};

Print:

Sum = 50

Using:

Arr.sum()



Challenge 2

Create:

Int arr[] = ‘{2,5,10};

Print:

Product = 100

Using:

Arr.product()
*/
module array_reduction_method_tb ;
int arr_sum[] = '{5,10,15,20};
int arr_product[] = '{2,5,10};
initial begin
    $display("challenge 1");
    $display("sum=%0d",arr_sum.sum());
    $display("challenge 2");
    $display("product=%0d",arr_product.product()); 
     
end
    
endmodule