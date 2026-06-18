
module task_tb;

int task_1[] ='{10,20,30,40,50};
int q[$];
typedef struct{
    int id = 015;
    int salary = 50000;

}employee_t

employee_t emp;

typedef union{
    int value_1;
    int value_2;
    int value_3;

}uniontb_t;

uniontb_t value;

initial begin


/*
9.Practice Challenge Set #2

Task 1

Create:

Int arr[] = ‘{10,20,30,40,50};

Print:

Min()
Max()
*/

    $display("---------- task-1 --------------");
    $display("maximum value in task_1 arr = %0d",task_1.mix());
    $display("minimum value inn task_2 arr = %0d",task_1.min());
    
/*
Task 2

Create:

Int q[$];

Store:

5
10
15
20

Print queue contents.
*/


    $display("---------- task-2 -------------");
    for(i=0; i<=5;i++)begin
        q[i]=(i+1)*5;
        $display("queue q =%0d",q[i]);
    end
/*


Task 3

Use:

Find(x) with (x > 25)

Print matching values.
*/

    $display("-------------- task-3 -----------");
    foreach(task_1[i])begin
        task_1[i]= find(x) with (x > 25);
        $display("find(x) with (x > 25) = %0d",task_1[i]);
        
    end

    /*



Task 4

Create a struct:

Employee_t

Store:

Id = 1001
Salary = 50000

Print values.

*/
$display("---------- task-4 -----------");
$display("employee id = %0d",emp.id);
$display("employee salary = %0d",emp.salary);

/*

Task 5

Create a union.

Assign one member.

Print all members.

Observe memory sharing.
*/

$display("----------- task-5 -----------");
mark.value_1 = 8'haa;
$display("value_1 = %0d",mark.value_1);
$display("value_2 = %0d",mark.value_2);
$display("value_3 = %0d",mark.value_3);








end


    
endmodule



