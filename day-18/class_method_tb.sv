/*
7.Challenge 1

Create:

Class employee;

    Int id;

    Function void display();

        $display(“ID=%0d”, id);

    Endfunction

Endclass

Assign:

ID = 1001

Call:

Display();



8.Challenge 2

Create:

Class packet;

    Int addr;
    Int data;

    Function void print_packet();

    Endfunction

Endclass

Assign values and print them using the method.

*/
module class_method;

//<--------- task-1 -------------->
class class_method;
  int id[5] ; 
int i;
    function void display();
    for (i = 0; i<5 ; i++ ) begin
        id[i] = 101 +i ;
        $display("id[%0d] = %0d",i,id[i]);
    end
        
    endfunction //new()
endclass 
class_method cm;

///<-------------- task-2 ------------------>

class packet;
  int addr[6];
  int data[6] ;
int i;
int j;
    function void print_packet();
    for (i = 0; i <= 5 ; i++ ) begin
        addr[i] = 725 + ((i)**2);
        $display("addr[%0d] = %0d",i,addr[i]);
    end
    for (j =0 ; j <= 5;j++ ) begin
        data[j] = 725 + ((j)**2);
      $display("data[%0d] = %0d",j,data[j]);
    end

        
    endfunction //new()
endclass 
packet pkt;
    initial begin
        $display("--------task - 1 ---------");
        
    
         cm = new();
        cm.display();

        $display("----------task - 2 ------------");

        pkt = new();
        pkt.print_packet();



    end
endmodule