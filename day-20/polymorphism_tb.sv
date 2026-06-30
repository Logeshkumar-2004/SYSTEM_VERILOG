/*
7.Challenge 1

Create:

Class animal;

    Virtual function void sound();

    Endfunction

Endclass

Create:

Dog
Cat

Override:

Bark
Meow

Use parent handle.

Observe output.



8.Challenge 2

Create:

Class transaction;

    Virtual function void display();

    Endfunction

Endclass

Create:

Read_transaction
Write_transaction

Override display.

Use:

Transaction tr;

Assign different child objects and call:

Tr.display();

*/
module polymorphism_tb;
////------------------- task-1 ----------------
class animal;
    virtual function void sound ();
    $display("------------ task -1 -----------");
        
    endfunction //new()
endclass //

class name extends animal;
string dog ;
string cat ;
    function void display();
            $display("dog_sound = %0s ",dog);
            $display("cat_sound = %0s ",cat);
    endfunction //new()
endclass  animal a;

///------------------------- task-2 ----------------

class transaction;
   virtual function void display();
    $display("---------- task-2 -------------");
    $display(" transaction ");       
    endfunction //new()
endclass //transaction

class read_transaction extends transaction;
    function void display_rt();
    $display(" read_transaction");        
    endfunction //new()
endclass //read_transaction extends transaction
class write_transaction extends transaction;
    function void  display_wt();
    $display(" write_transaction");
        
    endfunction //new()
endclass  transaction tr;

initial begin
    
    a = new name();
    a.dog = "Bark" ; 
    a.cat = "Meow" ;
    a.display();

    /// task - 2 
    tr  = new read_transaction();
    tr.display_rt();
    tr = new write_transaction();
    tr.display_wt();
end




endmodule