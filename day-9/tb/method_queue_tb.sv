/*
Day 10 Practice

Task 1

Create:

Int q[$];

Add:

10
20
30

Using:

Push_back()

Print all values.



Task 2

Insert:

5

Using:

Push_front()

Print queue.



Task 3

Remove one element using:

Pop_back()

Display:

Removed value

Remaining queue




Task 4

Remove one element using:

Pop_front()

Display:

Removed value

Remaining queue

*/

module m_q;
int q[$];
int data;
integer i;
    initial begin
        for(i=0;i<4;i++)
        begin
            q[i]=((i+1)*10);

        end
        foreach(q[i])
        begin
            $display("before q[%0d]=%0d",i,q[i]);            
        end
        
         q.push_back(50);
        

        i=0;
         foreach(q[i])
        begin
            $display("after push_back() q[%0d]=%0d",i,q[i]);            
        end
        q.push_front(0);

        foreach(q[i])
        begin
            $display("after push_front() q[%0d]=%0d",i,q[i]);            
        end

        data = q.pop_back();
        $display("pop_back = %0d",data);
        foreach(q[i])
        begin
            $display("after pop_back q[%0d] = %0d",i,q[i]);
        end

        data = q.pop_front();
        $display("pop_front = %0d",data);
        foreach(q[i])
        begin
            $display("after pop_front q[%0d] = %0d",i,q[i]);
        end
        $finish;

        
        
        
    end
endmodule