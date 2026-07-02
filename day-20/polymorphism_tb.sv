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
  string animal_sound ;
    virtual function void sound ();
    $display("------------ task -1 -----------");
        
    endfunction //new()
endclass //

class dog extends animal;

    function void sound();
      $display("dog_sound = %0s ",animal_sound);
           
    endfunction //new()
endclass  
  
  class cat extends animal;

    function void sound();
      $display("cat_sound = %0s ",animal_sound);
           
    endfunction //new()
endclass
  animal a;
  dog d;
  cat c;

///------------------------- task-2 ----------------

class transaction;
  int id;
   virtual function void display();
    $display("---------- task-2 -------------");
     $display(" transaction = %d",id);       
    endfunction //new()
endclass //transaction

class read_transaction extends transaction;
    function void display();
      $display(" read_transaction = %d",id);        
    endfunction //new()
endclass //read_transaction extends transaction
class write_transaction extends transaction;
    function void  display();
      $display(" write_transaction = %d",id);
        
    endfunction //new()
endclass  
transaction tr;
read_transaction r_tr;
write_transaction w_tr;
  

initial begin
    
    d=new();

    d.animal_sound = "Bark" ;
  a = d;
  a.sound();
  
  
  c=new();  
    c.animal_sound= "Meow" ;
  a=c;
    a.sound();

    /// task - 2 
  r_tr=new();
  
    r_tr.id=110;
  tr = r_tr;
    tr.display();
  w_tr=new();
  w_tr.id= 220;
  tr=w_tr;
    tr.display();
end




endmodule