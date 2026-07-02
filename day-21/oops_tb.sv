/*
8.Challenge 1

Create:

Class vehicle;

    Int speed;

    Function void display();

        $display(“Speed=%0d”, speed);

    Endfunction

Endclass

Create object.

Store:

Speed = 80

Print value.



9.Challenge 2

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

Observe polymorphism.
*/
module oops_tb;
//<-------------- challenge-1 ----------------------->
class vehicle;
int speed;

    function void display();
    $display(" vehicle speed = %0d",speed);
        
    endfunction //new()
endclass //className
vehicle v;

//<------------------ challenge-2 ---------------->
class animal;
string animal_sound;
    virtual function void sound();
      $display("animal_sound");        
    endfunction //new()
endclass //animal
class dog extends animal;
function void sound();
$display("dog_sound =%0s",animal_sound);    
endfunction
endclass
class cat extends animal;
    function void sound();
        $display("cat_sound = %0s",animal_sound);
    endfunction //new()
endclass //cat extends
animal a;
dog d;
cat c;


initial begin
    v = new();
    v.speed = 80;
    v.display();

    a = new();
    a.sound();

    d = new();
    d.animal_sound= "Bark";
    a = d;
    a.sound();

    c = new();
    c.animal_sound= "Meow";
    a = c;
    a.sound();



    
end
    
endmodule