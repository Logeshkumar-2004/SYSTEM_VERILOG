/*
Day 12 Practice

Task 1

Create:

Int arr[] = ‘{50,10,30,20,40};

Sort and print.



Task 2

Print:

Arr.min()
Arr.max()



Task 3

Create:

Int arr[] = ‘{10,20,20,30,30,40};

Use:

Unique()

Print unique values.



Task 4

Create:

Int arr[] = ‘{10,20,30,40,50};

Use:

Find(x) with (x > 25)

Print results.



Task 5

Use:

Find_index(x) with (x > 25)

Print indexes.
*/
module array_method;
    int arr[$];
    integer i;
    int sort_arr[$];
    int uniq[$];
    int result[$];
    int result_index[$];
  int max_val[$];
  int min_val[$];

    initial begin
        arr = '{10,30,20,40,50,50,60,70};
      foreach(arr[i])begin
          $display("arr[%0d]=%0d",i,arr[i]);
        end
        
      $display("-----reverse the array-----");
        sort_arr = arr;
        sort_arr.reverse();
      foreach (sort_arr[i])
        begin
          $display("reverse[%0d]=%0d",i,sort_arr[i]);
        end
     
      $display("-----task-1-----");
      $display("-----sort by accending order-----");
      sort_arr = arr;
        sort_arr.sort();
      foreach(sort_arr[i])begin
          $display("sort[%0d]=%0d",i,sort_arr[i]);            
        end
        
        
        
      $display("-----task-2-----");
      max_val = arr.max();
      min_val = arr.min();
      $display("arr.maximum=%0d",max_val[0]);
      $display("arr.minimum=%0d",min_val[0]);
    
      
      $display("-----task-3-----");
    uniq = arr.unique();
    foreach(uniq[i]) begin
        $display("unique[%0d]=%0d",i,uniq[i]);        
    end
    

    $display("task-4");
    result = uniq.find(x) with(x<=30);
    foreach(result[i])begin
        $display("result[%0d]=%0d",i,result[i]);

    end
    i=0;

     $display("task-5");
     result_index = uniq.find_index(x) with(x<=30);
     foreach(result_index[i])begin
       $display("result[%0d]=%0d",i,result_index[i]);
     end

    end

    
    
endmodule